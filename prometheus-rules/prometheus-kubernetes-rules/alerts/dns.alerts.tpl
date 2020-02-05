# vi:syntax=yaml
groups:
- name: dns.alerts
  rules:
  - alert: KubernetesDNSErrorSpike
    expr: sum(irate(skydns_skydns_dns_error_count_total[5m])) BY (system, cause) > sum(avg_over_time(skydns_skydns_dns_error_count_total_irate[12h] OFFSET 12h))
          BY (system, cause) * 4 + 100
    for: 15m
    labels:
      context: errors
      dashboard: skydns
      service: dns
      severity: info
      tier: {{ required ".Values.tier missing" .Values.tier }}
    annotations:
      description: Unusually many errors in {{`{{ $labels.system }}`}}/{{`{{ $labels.cause }}`}}
      summary: Unusual high kube-dns errors

  - alert: KubernetesDNSDown
    expr: up{job="kube-dns"} == 0
    for: 15m
    labels:
      context: availability
      dashboard: kubernetes-health
      service: dns
      severity: warning
      tier: {{ required ".Values.tier missing" .Values.tier }}
    annotations:
      description: Kube-dns on {{`{{ $labels.instance }}`}} is DOWN.
      summary: An kube-dns is DOWN

  - alert: KubernetesDNSAllDown
    expr: count(up{job="kube-dns"} == 0) == count(up{job="kube-dns"})
    for: 5m
    labels:
      context: availability
      dashboard: kubernetes-health
      service: dns
      severity: critical
      tier: {{ required ".Values.tier missing" .Values.tier }}
    annotations:
      description: All kube-dns servers are down. Cluster internal DNS is unavailable!
      summary: Kube-DNS is unavailable

  - alert: KubernetesDNSScrapeMissing
    expr: absent(up{job="kube-dns"})
    for: 1h
    labels:
      context: availability
      dashboard: kubernetes-health
      service: dns
      severity: info
      tier: {{ required ".Values.tier missing" .Values.tier }}
    annotations:
      description: Kube-dns failed to be scraped.
      summary: Kube-dns cannot be scraped
