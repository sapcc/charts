unset HOME
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
export APACHE_PID_FILE=/var/run/apache2/apache2.pid
export APACHE_RUN_DIR=/var/run/apache2
export APACHE_LOCK_DIR=/var/lock/apache2
export APACHE_LOG_DIR=/var/log/apache2
export LANG=C
export OS_NEUTRON_CONFIG_FILES="/etc/neutron/neutron.conf;/etc/neutron/plugins/ml2/ml2-conf.ini;/etc/neutron/plugins/ml2/ml2-conf-aci.ini;/etc/neutron/plugins/ml2/ml2-conf-manila.ini;/etc/neutron/plugins/ml2/ml2-conf-arista.ini;/etc/neutron/plugins/ml2/ml2-conf-asr1k.ini{{- if .Values.bgp_vpn.enabled }};/etc/neutron/networking-bgpvpn.conf{{- end }}{{- if .Values.fwaas.enabled }};/etc/neutron/neutron-fwaas.ini{{- end }}"
export PYTHONWARNINGS="ignore:Unverified HTTPS request"
