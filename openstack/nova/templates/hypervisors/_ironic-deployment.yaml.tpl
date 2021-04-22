{{- define "ironic_deployment" -}}
{{- $hypervisor := index . 1 -}}
{{- with index . 0 -}}
kind: Deployment
apiVersion: apps/v1
metadata:
  name: nova-compute-{{$hypervisor.name}}
  labels:
    system: openstack
    type: backend
    component: nova
spec:
  replicas: 1
  revisionHistoryLimit: {{ .Values.pod.lifecycle.upgrades.deployments.revision_history }}
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 0
      maxSurge: 3
  selector:
    matchLabels:
      name: nova-compute-{{$hypervisor.name}}
  template:
    metadata:
      labels:
{{ tuple . "nova" "compute" | include "helm-toolkit.snippets.kubernetes_metadata_labels" | indent 8 }}
        name: nova-compute-{{$hypervisor.name}}
        hypervisor: "ironic"
      annotations:
        configmap-etc-hash: {{ include (print .Template.BasePath "/etc-configmap.yaml") . | sha256sum }}
        configmap-ironic-etc-hash: {{ tuple . $hypervisor | include "ironic_configmap" | sha256sum }}
    spec:
      terminationGracePeriodSeconds: {{ $hypervisor.default.graceful_shutdown_timeout | default .Values.defaults.default.graceful_shutdown_timeout | add 5 }}
      containers:
        - name: nova-compute
          image: {{ required ".Values.global.registry is missing" .Values.global.registry}}/ubuntu-source-nova-compute:{{.Values.imageVersionNovaCompute | default .Values.imageVersionNova | default .Values.imageVersion | required "Please set nova.imageVersion or similar" }}
          imagePullPolicy: IfNotPresent
          command:
            - dumb-init
            - kubernetes-entrypoint
          env:
            - name: COMMAND
              value: "nova-compute"
            - name: NAMESPACE
              value: {{ .Release.Namespace }}
            {{- if .Values.sentry.enabled }}
            - name: SENTRY_DSN
              valueFrom:
                secretKeyRef:
                  name: sentry
                  key: {{ .Chart.Name }}.DSN.python
            {{- end }}
{{- if or $hypervisor.python_warnings .Values.python_warnings }}
            - name: PYTHONWARNINGS
              value: {{ or $hypervisor.python_warnings .Values.python_warnings | quote }}
{{- end }}
            - name: PGAPPNAME
              valueFrom:
                fieldRef:
                  fieldPath: metadata.name
          {{- if .Values.pod.resources.hv_ironic }}
          resources:
{{ toYaml .Values.pod.resources.hv_ironic | indent 12 }}
          {{- end }}
          volumeMounts:
            - mountPath: /etc/nova
              name: nova-etc
            - mountPath: /nova-patches
              name: nova-patches
      volumes:
        - name: nova-etc
          projected:
            defaultMode: 420
            sources:
            - configMap:
                items:
                - key: nova.conf
                  path: nova.conf
                - key: policy.json
                  path: policy.json
                - key: logging.ini
                  path: logging.ini
            - configMap:
                items:
                - key: nova-compute.conf
                  path: nova-compute.conf
                name: nova-compute-{{$hypervisor.name}}
        - name: nova-patches
          configMap:
            name: nova-patches
{{- end -}}
{{- end -}}
