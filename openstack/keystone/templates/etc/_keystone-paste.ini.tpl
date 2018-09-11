{{- if eq .Values.release "queens" }}
# Keystone PasteDeploy configuration file.

{{- if .Values.watcher.enabled }}
[filter:watcher]
use = egg:watcher-middleware#watcher
service_type = identity
include_initiator_user_id_in_metric = true
include_target_project_id_in_metric = false
config_file = /etc/keystone/watcher.yaml
{{- end }}

{{- if .Values.sentry.enabled }}
[filter:sentry]
use = egg:raven#raven
level = ERROR
{{- end }}

[filter:debug]
use = egg:oslo.middleware#debug

[filter:request_id]
use = egg:oslo.middleware#request_id

[filter:build_auth_context]
use = egg:keystone#build_auth_context

[filter:token_auth]
use = egg:keystone#token_auth

[filter:json_body]
use = egg:keystone#json_body

[filter:cors]
use = egg:oslo.middleware#cors
oslo_config_project = keystone

[filter:http_proxy_to_wsgi]
use = egg:oslo.middleware#http_proxy_to_wsgi

[filter:healthcheck]
use = egg:oslo.middleware#healthcheck
backends = disable_by_file
disable_by_file_path = /etc/keystone/healthcheck_disable

[filter:ec2_extension]
use = egg:keystone#ec2_extension

[filter:ec2_extension_v3]
use = egg:keystone#ec2_extension_v3

[filter:s3_extension]
use = egg:keystone#s3_extension

[filter:url_normalize]
use = egg:keystone#url_normalize

[filter:sizelimit]
use = egg:oslo.middleware#sizelimit

[filter:osprofiler]
use = egg:osprofiler#osprofiler

[app:public_service]
use = egg:keystone#public_service

[app:service_v3]
use = egg:keystone#service_v3

[app:admin_service]
use = egg:keystone#admin_service

[pipeline:public_api]
# The last item in this pipeline must be public_service or an equivalent
# application. It cannot be a filter.
pipeline = healthcheck {{ if .Values.debug }}debug{{ end }} cors sizelimit http_proxy_to_wsgi osprofiler url_normalize request_id build_auth_context token_auth json_body ec2_extension {{ if .Values.sentry.enabled }}sentry{{ end }} {{ if .Values.watcher.enabled }}watcher{{ end }} public_service

[pipeline:admin_api]
# The last item in this pipeline must be admin_service or an equivalent
# application. It cannot be a filter.
pipeline = healthcheck {{ if .Values.debug }}debug{{ end }} cors sizelimit http_proxy_to_wsgi osprofiler url_normalize request_id build_auth_context token_auth json_body ec2_extension s3_extension {{ if .Values.sentry.enabled }}sentry{{ end }} {{ if .Values.watcher.enabled }}watcher{{ end }} admin_service

[pipeline:api_v3]
# The last item in this pipeline must be service_v3 or an equivalent
# application. It cannot be a filter.
pipeline = healthcheck {{ if .Values.debug }}debug{{ end }} cors sizelimit http_proxy_to_wsgi osprofiler url_normalize request_id build_auth_context token_auth json_body ec2_extension_v3 s3_extension {{ if .Values.sentry.enabled }}sentry{{ end }} {{ if .Values.watcher.enabled }}watcher{{ end }} service_v3

[app:public_version_service]
use = egg:keystone#public_version_service

[app:admin_version_service]
use = egg:keystone#admin_version_service

[pipeline:public_version_api]
pipeline = healthcheck cors sizelimit osprofiler url_normalize public_version_service

[pipeline:admin_version_api]
pipeline = healthcheck cors sizelimit osprofiler url_normalize admin_version_service

[composite:main]
use = egg:Paste#urlmap
/v2.0 = public_api
/v3 = api_v3
/ = public_version_api

[composite:admin]
use = egg:Paste#urlmap
/v2.0 = admin_api
/v3 = api_v3
/ = admin_version_api

{{- end }}