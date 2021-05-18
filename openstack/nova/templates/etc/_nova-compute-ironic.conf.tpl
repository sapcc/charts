{{- define "nova_compute_ironic_conf" }}
{{- $hypervisor := index . 1 }}
{{- with index . 0 }}
[DEFAULT]
host = nova-compute-{{ $hypervisor.name }}
# Needs to be same on hypervisor and scheduler
scheduler_tracks_instance_changes = {{ .Values.scheduler.scheduler_tracks_instance_changes }}
scheduler_instance_sync_interval = {{ .Values.scheduler.scheduler_instance_sync_interval }}
{{- range $k, $v := $hypervisor.default }}
{{ $k }} = {{ $v }}
{{- end }}

[ironic]
# keystoneV3 values
auth_type = v3password
auth_url = {{.Values.global.keystone_api_endpoint_protocol_internal | default "http"}}://{{include "keystone_api_endpoint_host_internal" .}}:{{ .Values.global.keystone_api_port_internal | default 5000}}/v3
project_name = {{ default "service" .Values.global.keystone_service_project }}
project_domain_name = {{ default "Default" .Values.global.keystone_service_domain }}
username = {{ .Values.global.nova_service_user | default "nova" }}{{ .Values.global.user_suffix }}
password = {{ required ".Values.global.nova_service_password is missing" .Values.global.nova_service_password }}
user_domain_name = {{ default "Default" .Values.global.keystone_service_domain }}
# api endpoint is found via keystone catalog

{{- range $k, $v := $hypervisor.ironic }}
{{ $k }} = {{ $v }}
{{- end }}


{{- end }}
{{- end }}
