{{- define "ironic_conductor_deployment" }}
    {{- $conductor := index . 1 }}
    {{- with index . 0 }}
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: ironic-conductor-{{$conductor.name}}
  labels:
    system: openstack
    type: conductor
    component: ironic
spec:
  replicas: 1
  revisionHistoryLimit: {{ .Values.pod.lifecycle.upgrades.deployments.revisionHistory }}
  strategy:
    type: {{ .Values.pod.lifecycle.upgrades.deployments.podReplacementStrategy }}
    {{ if eq .Values.pod.lifecycle.upgrades.deployments.podReplacementStrategy "RollingUpdate" }}
    rollingUpdate:
      maxUnavailable: {{ .Values.pod.lifecycle.upgrades.deployments.rollingupdate.maxUnavailable }}
      maxSurge: {{ .Values.pod.lifecycle.upgrades.deployments.rollingupdate.maxSurge }}
    {{ end }}
  selector:
    matchLabels:
      name: ironic-conductor-{{$conductor.name}}
  template:
    metadata:
      labels:
        name: ironic-conductor-{{$conductor.name}}
{{ tuple . "ironic" "conductor" | include "helm-toolkit.snippets.kubernetes_metadata_labels" | indent 8 }}
      annotations:
        configmap-etc-hash: {{ include (print .Template.BasePath "/etc-configmap.yaml") . | sha256sum }}
        configmap-etc-conductor-hash: {{ tuple . $conductor | include "ironic_conductor_configmap" | sha256sum }}{{- if $conductor.jinja2 }}{{`
        configmap-etc-jinja2-hash: {{ block | safe | sha256sum }}
`}}{{- end }}
    spec:
      containers:
      - name: ironic-conductor
        image: {{ .Values.global.imageRegistry }}/{{ .Values.global.image_namespace }}/loci-ironic:{{ .Values.imageVersion }}
        imagePullPolicy: IfNotPresent
        {{- if $conductor.debug }}
        securityContext:
          runAsUser: 0
        {{- end }}
        command:
        - dumb-init
        - kubernetes-entrypoint
        env:
        - name: COMMAND
          {{- if not $conductor.debug }}
          value: "ironic-conductor --config-file /etc/ironic/ironic.conf --config-file /etc/ironic/ironic-conductor.conf"
          {{- else }}
          value: "sleep inf"
          {{- end }}
        - name: NAMESPACE
          value: {{ .Release.Namespace }}
        - name: DEPENDENCY_SERVICE
          value: "ironic-api,ironic-rabbitmq"
        {{- if .Values.logging.handlers.sentry }}
        - name: SENTRY_DSN
          valueFrom:
            secretKeyRef:
              name: sentry
              key: {{ .Chart.Name }}.DSN.python
        {{- end }}
        - name: PGAPPNAME
          valueFrom:
            fieldRef:
              fieldPath: metadata.name
        {{- if not $conductor.debug }}
        resources:
{{ toYaml .Values.pod.resources.conductor | indent 10 }}
        livenessProbe:
          exec:
            command:
            - bash
            - -c
            - eval $(cat /etc/ironic/ironic.conf | grep -Pzo '\[service_catalog\][^[]*' | tr -d '\000' | grep '='  | while read LINE; do var="${LINE% =*}" ; val="${LINE#*= }" ; echo export OS_${var^^}=${val} ; done); OS_IDENTITY_API_VERSION=3 openstack baremetal driver list -f csv | grep 'ironic-conductor-{{$conductor.name}}[,"]' >/dev/null
          initialDelaySeconds: 60
          periodSeconds: 10
          failureThreshold: 3
        {{- end }}
        volumeMounts:
        - mountPath: /etc/ironic
          name: etcironic
        - mountPath: /etc/ironic/ironic.conf
          name: ironic-etc
          subPath: ironic.conf
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/policy.json
          name: ironic-etc
          subPath: policy.json
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/rootwrap.conf
          name: ironic-etc
          subPath: rootwrap.conf
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/rootwrap.d/ironic-images.filters
          name: ironic-etc
          subPath: ironic-images.filters
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/rootwrap.d/ironic-utils.filters
          name: ironic-etc
          subPath: ironic-utils.filters
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/logging.ini
          name: ironic-etc
          subPath: logging.ini
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/ironic-conductor.conf
          name: ironic-conductor-etc
          subPath: ironic-conductor.conf
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/pxe_config.template
          name: ironic-conductor-etc
          subPath: pxe_config.template
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/ipxe_config.template
          name: ironic-conductor-etc
          subPath: ipxe_config.template
          readOnly: {{ not $conductor.debug }}
        - mountPath: /etc/ironic/uefi_pxe_config.template
          name: ironic-conductor-etc
          subPath: uefi_pxe_config.template
          readOnly: {{ not $conductor.debug }}
        - mountPath: /tftpboot
          name: ironic-tftp
        - mountPath: /shellinabox
          name: shellinabox
        {{- if $conductor.debug }}
        - mountPath: /development
          name: development
        {{- end }}
      - name: console
        image: {{.Values.imageVersionNginx | default "nginx:stable-alpine"}}
        imagePullPolicy: IfNotPresent
        resources:
{{ toYaml .Values.pod.resources.console | indent 10 }}
        ports:
          - name: ironic-console
            protocol: TCP
            containerPort: 80
        volumeMounts:
          - mountPath: /etc/nginx/conf.d
            name: ironic-console
          - mountPath: /shellinabox
            name: shellinabox
        livenessProbe:
          httpGet:
            path: /health
            port: ironic-console
          initialDelaySeconds: 5
          periodSeconds: 3
        readinessProbe:
          httpGet:
            path: /health
            port: ironic-console
          initialDelaySeconds: 5
          periodSeconds: 3
      volumes:
      - name: etcironic
        emptyDir: {}
      - name: shellinabox
        emptyDir: {}
      - name: ironic-etc
        configMap:
          name: ironic-etc
      - name: ironic-conductor-etc
        configMap:
          name: ironic-conductor-{{$conductor.name}}-etc
      - name: ironic-console
        configMap:
          name: ironic-console
      - name: ironic-tftp
        persistentVolumeClaim:
          claimName: ironic-tftp-pvclaim
      {{- if $conductor.debug }}
      - name: development
        persistentVolumeClaim:
          claimName: development-pvclaim
      {{- end }}
    {{- end }}
{{- end }}
