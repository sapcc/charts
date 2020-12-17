{{- define "keppel_image" -}}
  {{- if contains "DEFINED" $.Values.keppel.image_tag -}}
    {{ required "This release should be installed by the deployment pipeline!" "" }}
  {{- else -}}
    {{ $.Values.global.registryAlternateRegion }}/keppel:{{$.Values.keppel.image_tag}}
  {{- end -}}
{{- end -}}

{{- define "keppel_environment" }}
- name:  KEPPEL_DEBUG
  value: 'false'
- name:  KEPPEL_API_LISTEN_ADDRESS
  value: ':80'
{{- if $.Values.keppel.anycast_domain_name }}
- name:  KEPPEL_API_ANYCAST_URL
  value: 'https://{{$.Values.keppel.anycast_domain_name}}'
{{- end }}
{{- if (index $.Values.keppel "anycast_issuer_key.pem") }}
- name:  KEPPEL_ANYCAST_ISSUER_KEY
  value: '/etc/keppel/anycast-issuer-key.pem'
{{- end }}
- name:  KEPPEL_API_PUBLIC_URL
  value: 'https://keppel.{{$.Values.global.region}}.{{$.Values.global.tld}}'
- name:  KEPPEL_AUDIT_SILENT
  value: "{{ ne $.Values.keppel.rabbitmq.queue_name "" }}"
- name:  KEPPEL_AUDIT_RABBITMQ_QUEUE_NAME
  value: "{{ $.Values.keppel.rabbitmq.queue_name }}"
- name: KEPPEL_AUDIT_RABBITMQ_USERNAME
  value: "{{ $.Values.keppel.rabbitmq.username }}"
- name: KEPPEL_AUDIT_RABBITMQ_PASSWORD
  valueFrom:
    secretKeyRef:
      name: keppel-secret
      key: rabbitmq_password
- name: KEPPEL_AUDIT_RABBITMQ_HOSTNAME
  value: "{{ $.Values.keppel.rabbitmq.hostname }}"
- name:  KEPPEL_AUTH_LOCAL_ROLE
  value: 'swiftoperator'
- name:  KEPPEL_BURST_ANYCAST_BLOB_PULL_BYTES
  value: '4718592000' # 4500 MiB per account (see below, near the corresponding ratelimit, for rationale)
- name:  KEPPEL_BURST_BLOB_PULLS # burst budgets for regular pull/push are all ~30% of the rate limit per minute
  value: '300' # per account
- name:  KEPPEL_BURST_BLOB_PUSHES
  value: '30'  # per account
- name:  KEPPEL_BURST_MANIFEST_PULLS
  value: '300'  # per account
- name:  KEPPEL_BURST_MANIFEST_PUSHES
  value: '15'   # per account
- name: KEPPEL_DB_PASSWORD
  valueFrom:
    secretKeyRef:
      name: keppel-secret
      key: postgres_password
- name: KEPPEL_DB_HOSTNAME
  value: "{{ .Release.Name }}-postgresql"
- name: KEPPEL_DB_CONNECTION_OPTIONS
  value: "sslmode=disable"
- name:  KEPPEL_DRIVER_AUTH
  value: 'keystone'
- name:  KEPPEL_DRIVER_FEDERATION
  value: 'redis'
- name:  KEPPEL_DRIVER_RATELIMIT
  value: 'basic'
- name:  KEPPEL_DRIVER_STORAGE
  value: 'swift'
- name: KEPPEL_FEDERATION_REDIS_HOSTNAME
  value: "{{ $.Values.dynomite.hostname }}"
- name: KEPPEL_FEDERATION_REDIS_PORT
  value: "{{ $.Values.dynomite.port }}"
- name: KEPPEL_FEDERATION_REDIS_DB_NUM
  value: "{{ $.Values.dynomite.database }}"
- name: KEPPEL_FEDERATION_REDIS_PASSWORD
  valueFrom:
    secretKeyRef:
      name: keppel-secret
      key: dynomite_password
- name:  KEPPEL_FEDERATION_REDIS_PREFIX
  value: {{ quote $.Values.dynomite.prefix }}
- name:  KEPPEL_GUI_URI
  value: {{ quote $.Values.keppel.dashboard_url_pattern }}
- name:  KEPPEL_ISSUER_KEY
  value: '/etc/keppel/issuer-key.pem'
- name:  KEPPEL_JANITOR_LISTEN_ADDRESS
  value: ':80'
- name:  KEPPEL_OSLO_POLICY_PATH
  value: '/etc/keppel/policy.json'
- name:  KEPPEL_PEERS
  value: {{ $.Values.keppel.peer_hostnames | join "," | quote }}
- name:  KEPPEL_RATELIMIT_ANYCAST_BLOB_PULL_BYTES
  value: '5242880 B/s' # 5 MiB/s per account (very small to discourage continuous use of anycast, but
                       # the burst budget is very large to enable anycast pulling of large images; the
                       # actual burst budget is 4500 MiB, which is 15 minutes worth of rate limit)
- name:  KEPPEL_RATELIMIT_BLOB_PULLS
  value: '1000r/m' # per account
- name:  KEPPEL_RATELIMIT_BLOB_PUSHES
  value: '100r/m'  # per account
- name:  KEPPEL_RATELIMIT_MANIFEST_PULLS
  value: '1000r/m'  # per account (used to be smaller than rate limit for blob pulls, but we pulled
                    # it up to account for clients that just poll the state of certain tags without
                    # actually pulling the image contents)
- name:  KEPPEL_RATELIMIT_MANIFEST_PUSHES
  value: '10r/m'   # per account
- name: KEPPEL_REDIS_ENABLE
  value: '1'
- name: KEPPEL_REDIS_HOSTNAME
  value: "{{ .Release.Name }}-redis"
- name: KEPPEL_REDIS_DB_NUM
  value: '1'
- name: KEPPEL_REDIS_PASSWORD
  valueFrom:
    secretKeyRef:
      name: keppel-secret
      key: redis_password
- name:  OS_AUTH_URL
  value: "http://keystone.{{ $.Values.global.keystoneNamespace }}.svc.kubernetes.{{ $.Values.global.region }}.{{ $.Values.global.tld }}:5000/v3"
- name:  OS_AUTH_VERSION
  value: '3'
- name:  OS_IDENTITY_API_VERSION
  value: '3'
- name:  OS_INTERFACE
  value: internal
- name: OS_PASSWORD
  valueFrom:
    secretKeyRef:
      name: keppel-secret
      key: service_user_password
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
