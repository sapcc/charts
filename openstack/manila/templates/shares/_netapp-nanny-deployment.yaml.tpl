{{- define "share_netapp_nanny" -}}
{{$share := index . 1 -}}
{{with index . 0}}
kind: Deployment
apiVersion: extensions/v1beta1
metadata:
  name: manila-share-netapp-{{$share.name}}-nanny
  labels:
    system: openstack
    type: nanny
    component: manila
spec:
  replicas: 1
  revisionHistoryLimit: 2
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 0
      maxSurge: 1
  selector:
    matchLabels:
        name: manila-share-netapp-{{$share.name}}-nanny
  template:
    metadata:
      labels:
        name: manila-share-netapp-{{$share.name}}-nanny
      annotations:
        configmap-etc-hash: {{ include (print .Template.BasePath "/etc-configmap.yaml") . | sha256sum }}
        configmap-netapp-hash: {{ list . $share | include "share_netapp_configmap" | sha256sum }}
    spec:
      containers:
        - name: reexport
          image: "{{.Values.global.imageRegistry}}/{{.Values.global.imageNamespace}}/netapp-manila-nanny:{{.Values.imageVersionNetappManilaNanny}}"
          imagePullPolicy: IfNotPresent
          command:
            - dumb-init
            - kubernetes-entrypoint
          env:
            - name: COMMAND
              value: "{{ if not .Values.nanny.debug }}/bin/bash /scripts/netapp-manila-reexport.sh{{ else }}sleep inf{{ end }}"
            - name: NAMESPACE
              valueFrom:
                fieldRef:
                  fieldPath: metadata.namespace
            - name: DEPENDENCY_SERVICE
              value: "{{ .Release.Name }}-mariadb,{{ .Release.Name }}-api"
            - name: MANILA_NETAPP_NANNY_INTERVAL
              value: {{ .Values.nanny.netapp.interval | quote }}
            {{- if .Values.sentry.enabled }}
            - name: SENTRY_DSN
              valueFrom:
                secretKeyRef:
                  name: sentry
                  key: manila.DSN.python
            {{- end }}
          volumeMounts:
            - mountPath: /manila-etc
              name: manila-etc
            - name: etcmanila
              mountPath: /etc/manila
            - name: manila-etc
              mountPath: /etc/manila/manila.conf
              subPath: manila.conf
              readOnly: true
            - name: manila-etc
              mountPath: /etc/manila/logging.ini
              subPath: logging.ini
              readOnly: true
            - name: backend-config
              mountPath: /etc/manila/backend.conf
              subPath: backend.conf
              readOnly: true
          {{- if .Values.pod.resources.netapp_nanny }}
          resources:
{{ toYaml .Values.pod.resources.netapp_nanny | indent 13 }}
          {{- end }}
      volumes:
        - name: etcmanila
          emptyDir: {}
        - name: manila-etc
          configMap:
            name: manila-etc
        - name: backend-config
          configMap:
            name: share-netapp-{{$share.name}}
{{ end }}
{{- end -}}
