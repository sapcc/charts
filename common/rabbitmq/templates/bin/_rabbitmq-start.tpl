#!/usr/bin/env bash
set -e

LOCKFILE=/var/lib/rabbitmq/rabbitmq-server.lock
echo "Starting RabbitMQ with lock ${LOCKFILE}"
exec 9>${LOCKFILE}
/usr/bin/flock -n 9

function bootstrap {
   #Not especially proud of this, but it works (unlike the environment variable approach in the docs)
   chown -R rabbitmq:rabbitmq /var/lib/rabbitmq

   /etc/init.d/rabbitmq-server start

   rabbitmq-plugins enable rabbitmq_tracing
   rabbitmqctl trace_on

   rabbitmqctl add_user {{ .Values.users.default.user }} {{ .Values.users.default.password | default (tuple . .Values.users.default.user | include "rabbitmq.password_for_user") | quote }} || true
   rabbitmqctl set_permissions {{ .Values.users.default.user }} ".*" ".*" ".*" || true

   rabbitmqctl add_user {{ .Values.users.admin.user }} {{  .Values.users.admin.password | default (tuple . .Values.users.admin.user | include "rabbitmq.password_for_user") | quote }} || true
   rabbitmqctl set_permissions {{ .Values.users.admin.user }} ".*" ".*" ".*" || true
   rabbitmqctl set_user_tags {{ .Values.users.admin.user }} administrator || true

{{- if .Values.metrics.enabled }}
   rabbitmqctl add_user {{ .Values.metrics.user }} {{  .Values.metrics.password | default (tuple . .Values.metrics.user | include "rabbitmq.password_for_user") | quote }} || true
   rabbitmqctl set_permissions {{ .Values.metrics.user }} ".*" ".*" ".*" || true
   rabbitmqctl set_user_tags {{ .Values.metrics.user }} monitoring || true
{{- end }}

   rabbitmqctl change_password guest {{ .Values.users.default.password | default (tuple . .Values.users.default.user | include "rabbitmq.password_for_user") | quote }} || true
   rabbitmqctl set_user_tags guest monitoring || true
   /etc/init.d/rabbitmq-server stop
}


function start_application {
  exec gosu rabbitmq rabbitmq-server
}

bootstrap
start_application
