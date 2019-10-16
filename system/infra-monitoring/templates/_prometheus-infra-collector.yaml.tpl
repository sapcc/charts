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
      regex: '^ping_.+;www-(\w*)-(\w*-\w*-\w*).+'
      replacement: '$1'
      target_label: probed_to_type
    - source_labels: [__name__, target]
      regex: '^ping_.+;([a-zA-Z]*)(\d)\.cc\.(.+)\.cloud\.sap'
      replacement: '$1'
      target_label: probed_to_type
    - source_labels: [__name__, target]
      regex: '^ping_.+;cloudprober-.+'
      replacement: 'pod'
      target_label: probed_to_type
    - source_labels: [__name__, target]
      regex: '^ping_.+;www-(\w*)-(\w*-\w*-\w*).+'
      replacement: '$2'
      target_label: probed_to
    - source_labels: [__name__, target]
      regex: '^ping_.+;([a-zA-Z]*)0\.cc\.(.+)\.cloud\.sap'
      replacement: ${2}a
      target_label: probed_to
    - source_labels: [__name__, target]
      regex: '^ping_.+;([a-zA-Z]*)1\.cc\.(.+)\.cloud\.sap'
      replacement: ${2}b
      target_label: probed_to
    - source_labels: [__name__, target]
      regex: '^ping_.+;cloudprober-(\w*-\w*-\w*).+'
      replacement: '$1'
      target_label: probed_to
    - source_labels: [__name__, probe]
      regex: '^cloudprober_.+;(ping|http)-([a-zA-Z]*)-(.+)'
      replacement: '$2'
      target_label: probed_to_type
    - source_labels: [__name__, probe]
      regex: '^cloudprober_.+;(ping|http)-([a-zA-Z]*)-(.+)'
      replacement: '$3'
      target_label: probed_to
    - source_labels: [__name__]
      regex: '^cloudprober_.+'
      replacement: 'region'
      target_label: interconnect_type
    - source_labels: [__name__, probe]
      regex: '^cloudprober_.+;(ping|http)-[a-zA-Z]*-{{ .Values.global.region }}.+'
      replacement: 'dc'
      target_label: interconnect_type
    - source_labels: [__name__]
      regex: '^ping_.+'
      replacement: 'region'
      target_label: interconnect_type
    - source_labels: [__name__, target]
      regex: '^ping_.+;([a-zA-Z]*)\d\.cc\.{{ .Values.global.region }}\.cloud\.sap'
      replacement: 'dc'
      target_label: interconnect_type


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

{{- $values := .Values.arista_exporter -}}
{{- if $values.enabled }}
- job_name: 'arista'
  scrape_interval: 60s
  scrape_timeout: 55s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/arista-sd/arista_targets.json
  metrics_path: /arista
  relabel_configs:
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
  scrape_interval: 120s
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

- job_name: 'ipmi/esxi'
  params:
    job: [esxi]
  scrape_interval: 60s
  scrape_timeout: 55s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/netbox.json
  metrics_path: /ipmi
  relabel_configs:
    - source_labels: [job]
      regex: vmware-esxi
      action: keep
    - source_labels: [__address__]
      target_label: __param_target
    - source_labels: [__param_target]
      target_label: instance
    - target_label: __address__
      replacement: ipmi-exporter:{{$values.listen_port}}
{{- end }}

{{- $values := .Values.vasa_exporter -}}
{{- if $values.enabled }}
- job_name: 'vasa'
  scrape_interval: 200s
  scrape_timeout: 195s
  file_sd_configs:
      - files :
        - /etc/prometheus/configmaps/atlas-sd/netbox.json
  metrics_path: /
  relabel_configs:
    - source_labels: [job]
      regex: vcenter
      action: keep
    - source_labels: [server_name]
      target_label: __param_target
    - target_label: __address__
      replacement: vasa-exporter:{{$values.listen_port}}
{{- end }}

{{- if .Values.alertmanager_exporter.enabled }}
- job_name: 'prometheus/alertmanager'
  scrape_interval: 60s
  scrape_timeout: 55s
  static_configs:
    - targets:
      {{- range $.Values.alertmanager_exporter.targets }}
      - {{ . }}
      {{- end }}
  scheme: https
{{- end }}
