- job_name: 'prometheus-regions-federation'
  scheme: https
  scrape_interval: 60s
  scrape_timeout: 55s

  honor_labels: true
  metrics_path: '/federate'

  params:
    'match[]':
      - '{__name__=~"^ALERTS$"}'
      - '{__name__=~"^global:.+"}'
      - '{__name__=~"^probe_(dns|duration|http|success).*"}'
      - '{__name__=~"^snmp_asa_.+"}'
      - '{__name__=~"^snmp_asr_nat.+"}'
      - '{__name__=~"^snmp_asr_disman.+"}'
      - '{__name__=~"^snmp_scrape.+"}'
      - '{__name__=~"^elasticsearch_snmp_error.+"}'
      - '{__name__=~"^atlas_targets"}'
      - '{__name__=~"^atlas_up"}'
      - '{__name__=~"snmp_f5_sysMultiHostCpuUsageRatio5s"}'
      - '{__name__=~"snmp_f5_sysGlobalHostOtherMemUsedKb"}'
      - '{__name__=~"snmp_f5_sysGlobalHostOtherMemTotalKb"}'
      - '{__name__=~"snmp_f5_sysGlobalTmmStatMemoryUsedKb"}'
      - '{__name__=~"snmp_f5_sysGlobalTmmStatMemoryTotalKb"}'
      - '{__name__=~"snmp_f5_sysGlobalHostSwapUsedKb"}'
      - '{__name__=~"snmp_f5_sysGlobalHostSwapTotalKb"}'
      - '{__name__=~"^ping_.+"}'
      - '{__name__=~"^cloudprober_.+"}'
      - '{__name__=~"^ipmi_sensor_state$",type=~"Memory|Drive Slot|Processor|Power Supply|Critical Interrupt|Version Change"}'
      - '{__name__=~"^up"}'
      - '{__name__=~"^ipmi_up"}'
      - '{__name__=~"^netapp_capacity_aggregate"}'

  relabel_configs:
    - action: replace
      source_labels: [__address__]
      target_label: region
      regex: prometheus-infra.scaleout.(.+).cloud.sap
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
    - source_labels: [__name__, prometheus_source, prometheus]
      regex: '^up;^$;(.+)'
      replacement: '$1'
      target_label: prometheus_source
      action: replace

  {{ if .Values.authentication.enabled }}
  tls_config:
    cert_file: /etc/prometheus/secrets/prometheus-infra-sso-cert/sso.crt
    key_file: /etc/prometheus/secrets/prometheus-infra-sso-cert/sso.key
  {{ end }}

  static_configs:
    - targets:
{{- range $region := .Values.regionList }}
      - "prometheus-infra.scaleout.{{ $region }}.cloud.sap"
{{- end }}
