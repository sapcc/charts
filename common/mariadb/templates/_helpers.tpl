{{/* Generate the full name. */}}
{{- define "fullName" -}}
{{- required ".Values.name missing" .Values.name -}}-mariadb
{{- end -}}

{{/* Generate the service label for the templated Prometheus alerts. */}}
{{- define "alerts.service" -}}
{{- if .Values.alerts.service -}}
{{- .Values.alerts.service -}}
{{- else -}}
{{- .Release.Name -}}
{{- end -}}
{{- end -}}

{{define "keystone_url"}}http://keystone.{{ default .Release.Namespace .Values.global.keystoneNamespace }}.svc.kubernetes.{{.Values.global.region}}.{{.Values.global.tld}}:5000/v3{{end}}

{{- define "mariadb.db_host"}}{{.Release.Name}}-mariadb.{{.Release.Namespace}}.svc.kubernetes.{{.Values.global.region}}.{{.Values.global.tld}}{{- end}}

{{- define "mariadb.password_for_fixed_user_and_host" }}
    {{- $envAll := index . 0 }}
    {{- $user := index . 1 }}
    {{- $host := index . 2 }}
    {{- derivePassword 1 "basic" $envAll.Values.global.master_password $user $host }}
{{- end }}

{{- define "mariadb.password_for_fixed_user"}}
    {{- $envAll := index . 0 }}
    {{- $user := index . 1 }}
    {{- tuple $envAll $user ( include "mariadb.db_host" $envAll ) | include "mariadb.password_for_fixed_user_and_host" }}
{{- end }}

{{- define "mariadb.password_for_user"}}
    {{- $envAll := index . 0 }}
    {{- $user := index . 1 }}
    {{- tuple $envAll ( $envAll.Values.global.user_suffix | default "" | print $user ) | include "mariadb.password_for_fixed_user" }}
{{- end }}

{{- define "mariadb.root_password" -}}
{{- if hasKey .Values "root_password" -}}
{{- .Values.root_password }}
{{- else -}}
{{- tuple . "root" | include "mariadb.password_for_user" }}
{{- end -}}
{{- end -}}

{{- define "db_password" -}}
{{.Values.global.dbPassword | default (tuple . .Values.global.dbUser | include "mariadb.password_for_user")}}
{{- end -}}

{{- define "registry" -}}
{{- if .Values.use_alternate_registry -}}
{{- .Values.global.registryAlternateRegion -}}
{{- else -}}
{{- .Values.global.registry -}}
{{- end -}}
{{- end -}}

{{/* Needed for testing purposes only. */}}
{{define "RELEASE-NAME_db_host"}}testRelease-mariadb.{{.Release.Namespace}}.svc.kubernetes.{{.Values.global.region}}.{{.Values.global.tld}}{{end}}
{{define "testRelease_db_host"}}testRelease-mariadb.{{.Release.Namespace}}.svc.kubernetes.{{.Values.global.region}}.{{.Values.global.tld}}{{end}}
