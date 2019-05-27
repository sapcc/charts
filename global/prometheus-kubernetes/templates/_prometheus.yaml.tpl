- job_name: 'prometheus-regions-federation'
  scheme: https
  scrape_interval: 30s
  scrape_timeout: 25s

  honor_labels: true
  metrics_path: '/federate'

  params:
    'match[]':
      - '{__name__=~"^ALERTS$"}'
      - '{__name__=~"^alertmanager_.+"}'
      - '{__name__=~"^kube_node_.+"}'
      - '{__name__=~"^node_cpu_seconds_total",mode="idle"}'
      - '{__name__=~"^node_memory_MemTotal_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_MemFree_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_Cached_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_Buffers_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_Slab_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^kube_pod_container_resource_requests_memory_bytes$",node=~".+cloud.sap"}'
      - '{__name__=~"^kube_pod_container_resource_requests_cpu_cores$",node=~".+cloud.sap"}'
      - '{__name__=~"^kube_node_status_capacity$",node=~".+cloud.sap"}'
      - '{__name__=~"up"}'
      - '{__name__=~"^probe_(dns|duration|http|success).*"}'
      - '{__name__=~"^vice_president_token_count_remaining$"}'
      - '{__name__=~"^vice_president_sso_certificate_expires$"}'

  relabel_configs:
    - action: replace
      source_labels: [__address__]
      target_label: region
      regex: prometheus-kubernetes.(.+).cloud.sap
      replacement: $1
    - action: replace
      target_label: cluster_type
      replacement: controlplane

  metric_relabel_configs:
    - action: replace
      source_labels: [__name__]
      target_label: __name__
      regex: global:(.+)
      replacement: $1

  {{ if .Values.authentication.enabled }}
  tls_config:
    cert_file: /etc/prometheus/secrets/prometheus-sso-cert/sso.crt
    key_file: /etc/prometheus/secrets/prometheus-sso-cert/sso.key
  {{ end }}

  static_configs:
    - targets:
{{- range $region := .Values.regionList }}
      - "prometheus-kubernetes.{{ $region }}.cloud.sap"
{{- end }}

- job_name: 'prometheus-collector-regions-federation'
  scheme: https
  scrape_interval: 30s
  scrape_timeout: 25s

  honor_labels: true
  metrics_path: '/federate'

  params:
    'match[]':
      - 'up{job="prometheus-collector"}'

  relabel_configs:
    - action: replace
      source_labels: [__address__]
      target_label: region
      regex: prometheus-collector-kubernetes.(.+).cloud.sap
      replacement: $1
    - action: replace
      target_label: cluster_type
      replacement: controlplane

  metric_relabel_configs:
    - action: replace
      source_labels: [__name__]
      target_label: __name__
      regex: global:(.+)
      replacement: $1

  {{ if .Values.authentication.enabled }}
  tls_config:
    cert_file: /etc/prometheus/secrets/prometheus-sso-cert/sso.crt
    key_file: /etc/prometheus/secrets/prometheus-sso-cert/sso.key
  {{ end }}


  static_configs:
    - targets:
{{- range $region := .Values.regionList }}
      - "prometheus-collector-kubernetes.{{ $region }}.cloud.sap"
{{- end }}

- job_name: 'prometheus-kubernetes-scaleout-regions-federation'
  scheme: https
  scrape_interval: 30s
  scrape_timeout: 25s

  honor_labels: true
  metrics_path: '/federate'

  params:
    'match[]':
      - '{__name__=~"^ALERTS$"}'
      - '{__name__=~"^global:.+"}'
      - '{__name__=~"^alertmanager_.+"}'
      - '{__name__=~"^kube_node_.+"}'
      - '{__name__=~"^node_cpu_seconds_total",mode="idle"}'
      - '{__name__=~"^node_memory_MemTotal_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_MemFree_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_Cached_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_Buffers_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^node_memory_Slab_bytes$",instance=~".+cloud.sap"}'
      - '{__name__=~"^kube_pod_container_resource_requests_memory_bytes$",node=~".+cloud.sap"}'
      - '{__name__=~"^kube_pod_container_resource_requests_cpu_cores$",node=~".+cloud.sap"}'
      - '{__name__=~"^kube_node_status_capacity$",node=~".+cloud.sap"}'
      - '{__name__=~"up"}'
      - '{__name__=~"^probe_(dns|duration|http|success).*"}'
      - '{__name__=~"^vice_president_token_count_remaining$"}'
      - '{__name__=~"^vice_president_sso_certificate_expires$"}'
      - '{__name__=~"prometheus_build_version"}'

  relabel_configs:
    - action: replace
      source_labels: [__address__]
      target_label: region
      regex: prometheus-kubernetes.scaleout.(.+).cloud.sap
      replacement: $1
    - action: replace
      target_label: cluster_type
      replacement: scaleout

  metric_relabel_configs:
    - action: replace
      source_labels: [__name__]
      target_label: __name__
      regex: global:(.+)
      replacement: $1

  {{ if .Values.authentication.enabled }}
  tls_config:
    cert_file: /etc/prometheus/secrets/prometheus-sso-cert/sso.crt
    key_file: /etc/prometheus/secrets/prometheus-sso-cert/sso.key
  {{ end }}

  static_configs:
    - targets:
      - "prometheus-kubernetes.internet.eu-de-2.cloud.sap"
      - "prometheus-kubernetes.kubernetes-ccloudshell.eu-de-2.cloud.sap"
{{- range $region := .Values.regionList }}
      - "prometheus-kubernetes.scaleout.{{ $region }}.cloud.sap"
{{- end }}