---
kind: ConfigMap
apiVersion: v1
metadata:
  name: {{ required "Value apps[].name" .app.fullname }}
  labels:
    app.kubernetes.io/name: netapp-capacity-exporter
data:
  {{- if eq .appName "manila" }}
  netapp-filers.yaml: |
  {{- .manilaFilerYaml | nindent 4 }}
  {{- else }}
  netapp-filers.yaml: "TO BE POPULATED BY SIDECAR"
  {{- end }}
