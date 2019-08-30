# Scrape config for pods
#
# The relabeling allows the actual pod scrape endpoint to be configured via the
# following annotations:
#
# * `prometheus.io/scrape`: Only scrape pods that have a value of `true`
# * `prometheus.io/path`: If the metrics path is not `/metrics` override this.
# * `prometheus.io/port`: Scrape the pod on the indicated port instead of the default of `9102`.
- job_name: 'pods'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_scrape]
    regex: true
  - action: keep
    source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_targets]
    regex: .*infra-collector.*
  - action: keep
    source_labels: [__meta_kubernetes_pod_container_port_number, __meta_kubernetes_pod_container_port_name, __meta_kubernetes_pod_annotation_prometheus_io_port]
    regex: (9102;.*;.*)|(.*;metrics;.*)|(.*;.*;\d+)
  - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_path]
    target_label: __metrics_path__
    regex: (.+)
  - source_labels: [__address__, __meta_kubernetes_pod_annotation_prometheus_io_port]
    target_label: __address__
    regex: ([^:]+)(?::\d+);(\d+)
    replacement: ${1}:${2}
  - action: labelmap
    regex: __meta_kubernetes_pod_label_(.+)
  - source_labels: [__meta_kubernetes_namespace]
    target_label: kubernetes_namespace
  - source_labels: [__meta_kubernetes_pod_name]
    target_label: kubernetes_pod_name
  metric_relabel_configs:
    - regex: "instance|kubernetes_namespace|kubernetes_pod_name|kubernetes_name|pod_template_hash|exported_instance"
      action: labeldrop
    - source_labels: [__name__, target]
      regex: 'ping_.+;www-(\w*)-(\w*-\w*-\w*).+'
      replacement: '$2'
      target_label: probed_to
    - source_labels: [__name__, target]
      regex: 'ping_.+;www-(\w*)-(\w*-\w*-\w*).+'
      replacement: '$1'
      target_label: probed_to_type

# Scrape config for pods with an additional port for metrics via `prometheus.io/port_1` annotation.
#
# * `prometheus.io/scrape`: Only scrape pods that have a value of `true`
# * `prometheus.io/path`: If the metrics path is not `/metrics` override this.
# * `prometheus.io/port_1`: Scrape the pod on the indicated port instead of the default of `9102`.
- job_name: 'pods_metric_port_1'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_scrape]
    regex: true
  - action: keep
    source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_targets]
    regex: .*infra-collector.*
  - action: keep
    source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_port_1]
    regex: \d+
  - action: keep
    source_labels: [__meta_kubernetes_pod_container_port_number, __meta_kubernetes_pod_container_port_name, __meta_kubernetes_pod_annotation_prometheus_io_port_1]
    regex: (9102;.*;.*)|(.*;metrics;.*)|(.*;.*;\d+)
  - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_path]
    target_label: __metrics_path__
    regex: (.+)
  - source_labels: [__address__, __meta_kubernetes_pod_annotation_prometheus_io_port_1]
    target_label: __address__
    regex: ([^:]+)(?::\d+);(\d+)
    replacement: ${1}:${2}
  - action: labelmap
    regex: __meta_kubernetes_pod_label_(.+)
  - source_labels: [__meta_kubernetes_namespace]
    target_label: kubernetes_namespace
  - source_labels: [__meta_kubernetes_pod_name]
    target_label: kubernetes_pod_name
  metric_relabel_configs:
    - regex: "instance|job|kubernetes_namespace|kubernetes_pod_name|kubernetes_name|pod_template_hash|exported_instance|exported_job|type|name|component|system"
      action: labeldrop
    - source_labels: [__name__, target]
      regex: 'ping_.+;www-(\w*)-(\w*-\w*-\w*).+'
      replacement: '$2'
      target_label: probed_to
    - source_labels: [__name__, target]
      regex: 'ping_.+;www-(\w*)-(\w*-\w*-\w*).+'
      replacement: '$1'
      target_label: probed_to_type

{{- $values := .Values.alertmanager_exporter -}}
{{- if $values.enabled }}
- job_name: 'alertmanager'
  scrape_interval: 60s
  scrape_timeout: 55s
  static_configs:
    targets:
      - {{ .Values.alertmanager_exporter.target }}
  metrics_path: /metrics
{{- end }}

{{- $values := .Values.arista_exporter -}}
{{- if $values.enabled }}
- job_name: 'arista'
  scrape_interval: 60s
  scrape_timeout: 55s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/netbox.json
  metrics_path: /arista
  relabel_configs:
    - source_labels: [job]
      regex: asw-eapi
      action: keep
    - source_labels: [__address__]
      target_label: __param_target
    - source_labels: [__param_target]
      target_label: instance
    - target_label: __address__
      replacement: arista-exporter:9200
{{- end }}

{{- $values := .Values.snmp_exporter -}}
{{- if $values.enabled }}
- job_name: 'snmp'
  scrape_interval: 60s
  scrape_timeout: 55s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/netbox.json
  metrics_path: /snmp
  relabel_configs:
    - source_labels: [job]
      regex: snmp
      action: keep
    - source_labels: [__address__]
      target_label: __param_target
    - source_labels: [__param_target]
      target_label: instance
    - target_label: __address__
      replacement: snmp-exporter:{{$values.listen_port}}
    - source_labels: [module]
      target_label: __param_module
  metric_relabel_configs:
    - source_labels: [server_name]
      target_label:  devicename
    - source_labels: [devicename]
      regex: '(\w*-\w*-\w*)-(\S*)'
      replacement: '$1'
      target_label: availability_zone
    - source_labels: [devicename]
      regex: '(\w*-\w*-\w*)-(\S*)'
      replacement: '$2'
      target_label: device
# hack to mitigate some false-positive snmp_asr_ alerts due to netbox naming pattern devicename="LA-BR-1-ASR11a"
    - source_labels: [__name__, devicename]
      regex: 'snmp_asr_RedundancyGroup;(\w*-\w*-\w*)-(\S*).$'
      replacement: '$2'
      target_label: device
{{- end }}

{{- $values := .Values.bios_exporter -}}
{{- if $values.enabled }}
- job_name: 'bios/ironic'
  params:
    job: [bios/ironic]
  scrape_interval: 140s
  scrape_timeout: 135s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/ironic.json
  metrics_path: /
  relabel_configs:
    - source_labels: [__address__]
      target_label: __param_target
    - source_labels: [__param_target]
      target_label: instance
    - target_label: __address__
      replacement: bios-exporter:{{$values.listen_port}}
    - source_labels: [manufacturer]
      target_label:  __param_manufacturer
    - source_labels: [model]
      target_label:  __param_model
{{- end }}

{{- $values := .Values.ipmi_exporter -}}
{{- if $values.enabled }}
- job_name: 'ipmi/ironic'
  params:
    job: [baremetal/ironic]
  scrape_interval: 60s
  scrape_timeout: 55s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/ironic.json
  metrics_path: /ipmi
  relabel_configs:
    - source_labels: [__address__]
      target_label: __param_target
    - source_labels: [__param_target]
      target_label: instance
    - target_label: __address__
      replacement: ipmi-exporter:{{$values.listen_port}}

- job_name: 'cp/netbox'
  params:
    job: [cp/netbox]
  scrape_interval: 60s
  scrape_timeout: 55s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/netbox.json
  metrics_path: /ipmi
  relabel_configs:
    - source_labels: [job]
      regex: cp/netbox
      action: keep
    - source_labels: [__address__]
      target_label: __param_target
    - source_labels: [__param_target]
      target_label: instance
    - target_label: __address__
      replacement: ipmi-exporter:{{$values.listen_port}}
    - source_labels: [__meta_serial]
      target_label: server_serial
{{- end }}

{{- range $region := .Values.global.regions }}
- job_name: 'blackbox/ingress-{{ $region }}'
  metrics_path: /probe
  params:
    # Look for a HTTP 200 response per default.
    # Can be overwritten by annotating the ingress resource with the expected return codes, e.g. `prometheus.io/probe_code: "4xx"`
    module: [http_2xx]
  scheme: https
  kubernetes_sd_configs:
  - role: ingress
  relabel_configs:
  - source_labels: [__meta_kubernetes_ingress_annotation_prometheus_io_probe]
    action: keep
    regex: true
  # consider prometheus.io/probe_code annotation. mind below regex.
  - source_labels: [__meta_kubernetes_ingress_annotation_prometheus_io_probe_code]
    regex: ^(\d).+
    replacement: http_${1}xx
    target_label: __param_module
  - source_labels: [__meta_kubernetes_ingress_annotation_prometheus_io_probe_module]
    regex: (.+)
    target_label: __param_module
  - source_labels: [__meta_kubernetes_ingress_annotation_prometheus_io_probe_path]
    regex: ^(\/.+)
    target_label: __meta_kubernetes_ingress_path
  - source_labels: [__meta_kubernetes_ingress_scheme,__address__,__meta_kubernetes_ingress_path]
    regex: (.+);(.+);(.+)
    replacement: ${1}://${2}${3}
    target_label: __param_target
  - target_label: __address__
    replacement: prober.{{ $region }}.cloud.sap
  - source_labels: [__param_target]
    target_label: instance
  - action: labelmap
    regex: __meta_kubernetes_ingress_label_(.+)
  - source_labels: [__meta_kubernetes_namespace]
    target_label: kubernetes_namespace
  - source_labels: [__meta_kubernetes_ingress_name]
    target_label: ingress_name
  - source_labels: [__param_module]
    target_label: module
  - target_label: region_probed_from
    replacement: {{ $region }}
{{- end }}

{{ $root := .Values }}
{{- if .Values.blackbox_exporter }}
{{- if .Values.blackbox_exporter.static_config }}
{{- range $module, $module_config := .Values.blackbox_exporter.static_config }}
- job_name: 'blackbox/static-targets-{{ $module }}'
  metrics_path: /probe
  params:
    module: [{{ $module }}]
  static_configs:
    - targets:
      {{- range  $module_config.targets }}
      - {{ . }}
      {{- end }}
  scheme: https
  relabel_configs:
  - source_labels: [__address__]
    target_label: __param_target
  - source_labels: [__param_target]
    target_label: instance
  - target_label: __address__
    replacement: prober.{{ $root.global.region }}.cloud.sap
  - source_labels: [__param_module]
    target_label: module
  - target_label: region_probed_from
    replacement: {{ $root.global.region }}
{{ end }}
{{ end }}

{{- if .Values.blackbox_exporter.tcp_probe_targets }}
{{- range $region := .Values.global.regions }}
- job_name: 'blackbox/tcp-{{ $region }}'
  metrics_path: /probe
  scrape_interval: 15s
  params:
    module: [tcp_connect]
  static_configs:
    - targets:
      {{- range $.Values.blackbox_exporter.tcp_probe_targets }}
      - {{ . }}
      {{- end }}
  scheme: https
  relabel_configs:
  - source_labels: [__address__]
    target_label: __param_target
  - source_labels: [__param_target]
    target_label: instance
  - target_label: __address__
    replacement: prober.{{ $region }}.cloud.sap
  - source_labels: [__param_module]
    target_label: module
  - target_label: region_probed_from
    replacement: {{ $region }}
{{- end }}
{{- end }}
{{- end }}
