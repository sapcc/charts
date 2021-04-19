groups:
- name: pvc_usage.alerts
  rules:
  - alert: HighPVCUsagePredicted
    expr: sum((pvc_usage* 100 > 70) and (predict_linear(pvc_usage[1d], 7 * 24 * 3600) * 100 > 90 )) by (persistentvolumeclaim, mountedby, volumename)
    for: 1h
    labels:
      tier: k8s
      service: resources
      severity: info
      context: storage
      meta: "PVC {{`{{ $labels.persistentvolumeclaim }}`}} is predicted to exceed 90% memory consumption in the next 7 days"
    annotations:
      description: "The PVC {{`{{ $labels.persistentvolumeclaim }}`}} mountedby {{`{{ $labels.mountedby }}`}} with volume name {{`{{ $labels.volumename }}`}} is predicted to exceed 90% memory consumption in the next 7 days"
      summary: "PVC {{`{{ $labels.persistentvolumeclaim }}`}} is predicted to exceed 90% memory consumption in the next 7 days" 