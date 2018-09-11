{{- define "ironic_conductor_conf" -}}
{{- $envAll    :=  index . 0 -}}
{{- $conductor :=  index . 1 -}}
{{- with $envAll -}}
{{- $tftp_ip :=  $conductor.tftp_ip | default .Values.tftp_ip | default .Values.global.ironic_tftp_ip }}
{{- $deploy_port :=  $conductor.tftp_ip | default .Values.tftp_ip | default .Values.global.ironic_tftp_ip }}
[DEFAULT]
{{- if $conductor.enabled_drivers }}
enabled_drivers = {{ $conductor.enabled_drivers}}
{{- end }}
{{- range $k, $v :=  $conductor.default }}
{{ $k }} = {{ $v }}
{{- end }}

[conductor]
api_url = {{ .Values.global.ironic_api_endpoint_protocol_public | default "https" }}://{{include "ironic_api_endpoint_host_public" .}}:{{ .Values.global.ironic_api_port_public | default "443" }}
clean_nodes = {{ $conductor.clean_nodes | default "False" }}
automated_clean = {{ $conductor.automated_clean | default "False" }}

[console]
terminal_pid_dir = /shellinabox
terminal_url_scheme = https://{{ include "ironic_console_endpoint_host_public" . }}/{{$conductor.name}}/%(uuid)s/%(expiry)s/%(digest)s
socket_permission = 0666
ssh_command_pattern = sshpass -f %(pw_file)s ssh -oLogLevel=error -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no -oKexAlgorithms=+diffie-hellman-group1-sha1 -l %(username)s %(address)s
url_auth_digest_secret = {{.Values.console.secret}}

[deploy]
# We expose this directory over http and tftp
http_root = /tftpboot
http_url = {{ .Values.conductor.deploy.protocol }}://{{ $tftp_ip }}:{{ .Values.conductor.deploy.port }}/tftpboot

[pxe]
tftp_server = {{ $tftp_ip }}
tftp_root = /tftpboot

ipxe_enabled = {{ $conductor.ipxe_enabled | default .Values.conductor.ipxe_enabled | default "False" }}
ipxe_use_swift = {{ $conductor.ipxe_use_swift | default .Values.conductor.ipxe_use_swift | default "False" }}

pxe_append_params = {{ $conductor.pxe_append_params | default .Values.conductor.pxe_append_params }}
pxe_bootfile_name = {{ $conductor.pxe_bootfile_name | default .Values.conductor.pxe_bootfile_name | default "pxelinux.0" }}
{{- if $conductor.ipxe_enabled }}
pxe_config_template = $pybasedir/drivers/modules/ipxe_config.template
{{- else }}
pxe_config_template = /etc/ironic/pxe_config.template
{{- end }}

uefi_pxe_bootfile_name = ipxe.efi
uefi_pxe_config_template = $pybasedir/drivers/modules/ipxe_config.template
{{- end }}
{{- end }}
