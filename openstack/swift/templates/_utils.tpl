{{- define "swift_endpoint_host" -}}
{{- $cluster := index . 0 -}}
{{- $context := index . 1 -}}
{{$cluster.endpoint_host}}.{{$context.global.region}}.{{$context.global.tld}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $release := index . 0 -}}
{{- $chart := index . 1 -}}
{{- $values := index . 2 -}}
{{- $name := default $chart.Name $values.nameOverride -}}
{{- printf "%s-%s" $release.Name $name | trunc 24 -}}
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_daemonset_tolerations" }}
tolerations:
- key: "species"
  operator: "Equal"
  value: "{{ .Values.species }}"
  effect: "NoSchedule"
- key: "species"
  operator: "Equal"
  value: "{{ .Values.species }}-multipath"
  effect: "NoSchedule"
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_prometheus_annotations" }}
prometheus.io/scrape: "true"
prometheus.io/port: "9102"
prometheus.io/targets: {{ required ".Values.alerts.prometheus.openstack missing" .Values.alerts.prometheus.openstack }}
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_conf_annotations" }}
checksum/swift.etc: {{ include "swift/templates/etc/configmap.yaml" . | sha256sum }}
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_ring_annotations" }}
checksum/account.ring: {{ include "swift/templates/account-ring.yaml" . | sha256sum }}
checksum/container.ring: {{ include "swift/templates/container-ring.yaml" . | sha256sum }}
checksum/object.ring: {{ include "swift/templates/object-ring.yaml" . | sha256sum }}
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_cluster_configmap" }}
{{- $context := index . 0 -}}
{{- $cluster_id := index . 1 -}}
{{- $kind := index . 2 -}}
{{- $cluster := index $context.Values.clusters $cluster_id -}}
apiVersion: v1
kind: ConfigMap
metadata:
  name: swift-etc-{{ $cluster_id }}-{{ $kind }}
  labels:
    system: openstack
    service: objectstore
    component: configuration

data:
  # nginx
  nginx.conf: |
{{ tuple $cluster $kind $context.Values | include "nginx.conf" | indent 4 }}

  # swift
  container-sync-realms.conf: |
{{ tuple $cluster $context.Values | include "container-sync-realms.conf" | indent 4 }}
  proxy-server.conf: |
{{ tuple $cluster $kind $context.Values $context.Release | include "proxy-server.conf" | indent 4 }}
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_daemonset_volumes" }}
- name: swift-etc
  configMap:
    name: swift-etc
- name: swift-account-ring
  configMap:
    name: swift-account-ring
- name: swift-container-ring
  configMap:
    name: swift-container-ring
- name: swift-object-ring
  configMap:
    name: swift-object-ring
- name: swift-drives
  hostPath:
    path: /srv/node
- name: swift-cache
  hostPath:
    path: /var/cache/swift
- name: swift-drive-state
  hostPath:
    path: /run/swift-storage/state
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_proxy_volumes" }}
{{- $kind := index . 0 -}}
{{- $cluster := index . 1 }}
- name: tls-secret
  secret:
    secretName: tls-swift-{{ $cluster }}
- name: swift-bin
  configMap:
    name: swift-bin
- name: swift-etc
  configMap:
    name: swift-etc
- name: swift-etc-cluster
  configMap:
    name: swift-etc-{{ $cluster }}-{{ $kind }}
- name: swift-account-ring
  configMap:
    name: swift-account-ring
- name: swift-container-ring
  configMap:
    name: swift-container-ring
- name: swift-object-ring
  configMap:
    name: swift-object-ring
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_proxy_containers" }}
{{- $kind    := index . 0 -}}
{{- $cluster := index . 1 -}}
{{- $context := index . 2 }}
- name: proxy
  image: {{ include "swift_image" $context }}
  command:
    - /usr/bin/dumb-init
  args:
    - /bin/bash
    - /usr/bin/swift-start
    - proxy-server
  env:
    - name: DEBUG_CONTAINER
      value: "false"
    {{- if $context.Values.sentry.enabled }}
    - name: SENTRY_DSN
      valueFrom:
        secretKeyRef:
          name: sentry
          key: swift.DSN.public
    {{- end }}
  {{- $resources_cpu := index $cluster (printf "proxy_%s_resources_cpu" $kind) }}
  {{- $resources_memory := index $cluster (printf "proxy_%s_resources_memory" $kind) }}
  resources:
    requests:
      cpu: {{ required (printf "proxy_%s_resources_cpu is required" $kind) $resources_cpu | quote }}
      memory: {{ required (printf "proxy_%s_resources_memory is required" $kind) $resources_memory | quote }}
    limits:
      cpu: {{ required (printf "proxy_%s_resources_cpu is required" $kind) $resources_cpu | quote }}
      memory: {{ required (printf "proxy_%s_resources_memory is required" $kind) $resources_memory | quote }}
  volumeMounts:
    - mountPath: /swift-etc
      name: swift-etc
    - mountPath: /swift-etc-cluster
      name: swift-etc-cluster
    - mountPath: /swift-rings/account
      name: swift-account-ring
    - mountPath: /swift-rings/container
      name: swift-container-ring
    - mountPath: /swift-rings/object
      name: swift-object-ring
  livenessProbe:
    httpGet:
      path: /healthcheck
      port: 8080
      scheme: HTTP
    initialDelaySeconds: 10
    timeoutSeconds: 1
    periodSeconds: 10
- name: nginx
  image: {{ $context.Values.global.registryAlternateRegion }}/swift-nginx:{{ $context.Values.image_version_nginx }}
  command:
    - /usr/bin/dumb-init
  args:
    - /bin/sh
    - /swift-bin/nginx-start
  resources:
    # observed usage: CPU = 10m-500m, RAM = 50-100 MiB
    requests:
      cpu: "1000m"
      memory: "200Mi"
    limits:
      cpu: "1000m"
      memory: "200Mi"
  volumeMounts:
    - mountPath: /swift-bin
      name: swift-bin
    - mountPath: /swift-etc
      name: swift-etc
    - mountPath: /swift-etc-cluster
      name: swift-etc-cluster
    - mountPath: /tls-secret
      name: tls-secret
  livenessProbe:
    httpGet:
      path: /nginx-health
      port: 1080
      scheme: HTTP
    initialDelaySeconds: 10
    timeoutSeconds: 1
    periodSeconds: 10
  readinessProbe:
    httpGet:
      path: /healthcheck
      port: {{ $cluster.proxy_public_port }}
      scheme: HTTPS
      httpHeaders:
        - name: Host
          value: {{ tuple $cluster $context.Values | include "swift_endpoint_host" }}
    initialDelaySeconds: 10
    timeoutSeconds: 1
    periodSeconds: 5
{{- if $context.Values.nginx_exporter }}
- name: nginx-exporter
  image: {{ $context.Values.global.dockerHubMirrorAlternateRegion }}/nginx/nginx-prometheus-exporter:{{ $context.Values.image_version_nginx_exporter }}
  args:
    - -nginx.scrape-uri
    - http://127.0.0.1:1080/nginx_status
  resources:
    requests:
      cpu: "100m"
      memory: "150Mi"
    limits:
      cpu: "100m"
      memory: "150Mi"
  ports:
    - name: metrics
      containerPort: 9113
{{- end -}}
{{- if $context.Values.health_exporter }}
- name: collector
  image: {{ include "swift_image" $context }}
  command:
    - /usr/bin/dumb-init
  args:
    - /bin/bash
    - /usr/bin/swift-start
    - health-exporter
    - --recon.timeout=20
    - --recon.timeout-host=2
  ports:
    - name: metrics
      containerPort: 9520
  resources:
    # observed usage: CPU = ~10m, RAM = 70-100 MiB
    # low cpu allocation results in performance degradation
    requests:
      cpu: "100m"
      memory: "150Mi"
    limits:
      cpu: "100m"
      memory: "150Mi"
  volumeMounts:
    - mountPath: /swift-etc
      name: swift-etc
    - mountPath: /swift-rings/account
      name: swift-account-ring
    - mountPath: /swift-rings/container
      name: swift-container-ring
    - mountPath: /swift-rings/object
      name: swift-object-ring
{{- end}}
- name: statsd
  image: prom/statsd-exporter:{{ $context.Values.image_version_auxiliary_statsd_exporter }}
  args: [ --statsd.mapping-config=/swift-etc/statsd-exporter.yaml ]
  resources:
    # observed usage: CPU = 10m-100m, RAM = 550-950 MiB
    requests:
      cpu: "200m"
      memory: "1024Mi"
    limits:
      cpu: "200m"
      memory: "1024Mi"
  ports:
    - name: statsd
      containerPort: 9125
      protocol: UDP
    - name: metrics
      containerPort: 9102
  volumeMounts:
    - mountPath: /swift-etc
      name: swift-etc
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_standard_container" -}}
{{- $image   := index . 0 -}}
{{- $service := index . 1 -}}
{{- $context := index . 2 }}
- name: {{ $service }}
  image: {{ include "swift_image" $context }}
  command:
    - /usr/bin/dumb-init
  args:
    - /bin/bash
    - /usr/bin/swift-start
    - {{ $service }}
  # privileged access required for /usr/bin/unmount-helper (TODO: use shared/slave mount namespace instead)
  securityContext:
    privileged: true
  env:
    - name: DEBUG_CONTAINER
      value: "false"
  volumeMounts:
    - mountPath: /swift-etc
      name: swift-etc
    - mountPath: /swift-rings/account
      name: swift-account-ring
    - mountPath: /swift-rings/container
      name: swift-container-ring
    - mountPath: /swift-rings/object
      name: swift-object-ring
    - mountPath: /srv/node
      name: swift-drives
    - mountPath: /var/cache/swift
      name: swift-cache
    - mountPath: /swift-drive-state
      name: swift-drive-state
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_image" -}}
  {{- if ne .Values.image_version "DEFINED_BY_PIPELINE" -}}
    {{ .Values.global.registryAlternateRegion }}/{{ .Values.imageRegistry_repo }}:{{ .Values.image_version }}
  {{- else -}}
    {{ required "This release should be installed by the deployment pipeline!" "" }}
  {{- end -}}
{{- end }}

{{- /**********************************************************************************/ -}}
{{- define "swift_release" -}}
{{- if ne .image_version "DEFINED_BY_PIPELINE" -}}
    {{ $v := .image_version | split "-"}}{{ $v._0 | lower }}
  {{- end -}}
{{- end }}

{{- /**********************************************************************************/ -}}
{{- define "swift_nginx_location" -}}
{{- $context := index . 0 }} # This comments ensures that whitespace does not appear before newline
location / {
    # NOTE: It's imperative that the argument to proxy_pass does not
    # have a trailing slash. Swift needs to see the original request
    # URL for its domain-remap and staticweb functionalities.
    proxy_pass        http://127.0.0.1:8080;
    proxy_set_header  Host               $host;
    proxy_set_header  X-Real_IP          $remote_addr;
    proxy_set_header  X-Forwarded-For    $proxy_add_x_forwarded_for;
    proxy_set_header  X-Forwarded-Host   $host:$server_port;
    proxy_set_header  X-Forwarded-Server $host;
    proxy_pass_header Date;
    # buffering must be disabled since GET response or PUT request bodies can be *very* large
    # based on http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_request_buffering
    # http 1.1 must be enabled when chunked transfer encoding is used to avoid request buffering
    proxy_http_version      1.1;
    proxy_buffering         off;
    proxy_request_buffering off;
    # accept large PUT requests (5 GiB is the limit for a single object in Swift)
    client_max_body_size    5g;
    proxy_send_timeout      {{ add $context.client_timeout $context.node_timeout 5 }};
    proxy_read_timeout      {{ add $context.client_timeout $context.node_timeout 5 }};
}
{{- end -}}

{{- /**********************************************************************************/ -}}
{{- define "swift_nginx_ratelimit" -}}
{{- $cluster := index . 0 -}}
{{- $context := index . 1 -}}
{{- if $cluster.rate_limit_connections }}
# Rate Limit Connections
limit_conn conn_limit {{ $cluster.rate_limit_connections }};
limit_conn_status 429;
{{- end }}
{{- if $cluster.rate_limit_requests }}
# Rate Limit Requests
limit_req zone=req_limit burst={{ $cluster.rate_limit_burst }} nodelay;
limit_req_status 429;
{{- end }}
{{- end -}}

{{- /* Generate backend host for sapcc/openstack-ratelimit-middleware */ -}}
{{- define "sapcc_ratelimit_backend_host" -}}
{{- $release := index . 0 -}}
{{- $context := index . 1 -}}
{{- if $context.sapcc_ratelimit.backend.host -}}
{{- $context.sapcc_ratelimit.backend.host -}}
{{- else -}}
{{- $release.Name -}}-sapcc-ratelimit-redis
{{- end -}}
{{- end -}}
