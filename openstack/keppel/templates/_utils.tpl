When passed via `helm upgrade --set`, the image tag is misinterpreted as a float64. So special care is needed to render it correctly.

{{- define "keppel_image" -}}
  {{- if typeIs "string" $.Values.keppel.image_tag -}}
    {{ required "This release should be installed by the deployment pipeline!" "" }}
  {{- else -}}
    {{- if typeIs "float64" .Values.keppel.image_tag -}}
      {{ $.Values.global.registryAlternateRegion }}/keppel:{{$.Values.keppel.image_tag | printf "%0.f"}}
    {{- else -}}
      {{ $.Values.global.registryAlternateRegion }}/keppel:{{$.Values.keppel.image_tag}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "keppel_environment" }}
- name:  KEPPEL_DEBUG
  value: 'false'
- name:  KEPPEL_API_LISTEN_ADDRESS
  value: ':80'
- name:  KEPPEL_API_PUBLIC_URL
  value: 'https://keppel.{{$.Values.global.region}}.{{$.Values.global.tld}}'
- name:  KEPPEL_AUDIT_SILENT
  value: "{{ ne $.Values.keppel.rabbitmq.uri "" }}"
- name:  KEPPEL_AUDIT_RABBITMQ_URI
  value: "{{ $.Values.keppel.rabbitmq.uri }}"
- name:  KEPPEL_AUDIT_RABBITMQ_QUEUE_NAME
  value: "{{ $.Values.keppel.rabbitmq.queue_name }}"
- name:  KEPPEL_AUTH_LOCAL_ROLE
  value: 'swiftoperator'
- name:  KEPPEL_DB_URI
  value: 'postgres://postgres:{{$.Values.postgresql.postgresPassword}}@{{.Release.Name}}-postgresql/keppel?sslmode=disable'
- name:  KEPPEL_DRIVER_AUTH
  value: 'keystone'
- name:  KEPPEL_DRIVER_NAMECLAIM
  value: 'openstack-basic'
- name:  KEPPEL_DRIVER_ORCHESTRATION
  value: 'kubernetes'
- name:  KEPPEL_DRIVER_STORAGE
  value: 'swift'
- name:  KEPPEL_ISSUER_KEY
  value: '/etc/keppel/issuer-key.pem'
- name:  KEPPEL_JANITOR_LISTEN_ADDRESS
  value: ':80'
- name:  KEPPEL_NAMECLAIM_WHITELIST
  value: "{{ range $.Values.keppel.nameclaim_whitelist }}{{.project}}:{{.account}},{{end}}"
- name:  KEPPEL_OSLO_POLICY_PATH
  value: '/etc/keppel/policy.json'
- name:  KEPPEL_PEERS
  value: {{ $.Values.keppel.peer_hostnames | join "," | quote }}
- name:  OS_AUTH_URL
  value: "http://keystone.{{ $.Values.global.keystoneNamespace }}.svc.kubernetes.{{ $.Values.global.region }}.{{ $.Values.global.tld }}:5000/v3"
- name:  OS_AUTH_VERSION
  value: '3'
- name:  OS_IDENTITY_API_VERSION
  value: '3'
- name:  OS_INTERFACE
  value: internal
- name:  OS_PASSWORD
  value: {{ quote $.Values.keppel.service_password }}
- name:  OS_PROJECT_DOMAIN_NAME
  value: 'Default'
- name:  OS_PROJECT_NAME
  value: 'service'
- name:  OS_REGION_NAME
  value: {{ quote $.Values.global.region }}
- name:  OS_USER_DOMAIN_NAME
  value: 'Default'
- name:  OS_USERNAME
  value: 'keppel'
{{- end -}}
