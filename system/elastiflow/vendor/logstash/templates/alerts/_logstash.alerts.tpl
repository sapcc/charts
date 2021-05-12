groups:
- name: elastiflow-logstash.alerts
  rules:
  - alert: ElastiflowLogstashPodMissing
    expr: {{ .Values.replicas }} - count(logstash_info_node{app="elastiflow-logstash"}) by (app) > 0
    for: 15m
    labels:
      context: logstash
      service: elastiflow
      severity: info
      tier: os
      meta: '{{`{{ $labels.app }}`}} node(s) missing'
    annotations:
      description: '{{`{{ $labels.app }}`}} node(s) in controlplane cluster missing, please check'
      summary: '{{`{{ $labels.app }}`}} node(s) missing'
