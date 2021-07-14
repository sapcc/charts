Listen 0.0.0.0:{{.Values.global.neutron_api_port_internal | default 9696}}

ErrorLog /dev/stdout

LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-agent}i\" %D(us)" neutron_combined
CustomLog /dev/stdout neutron_combined

<VirtualHost *:{{.Values.global.neutron_api_port_internal | default 9696}}>
    KeepAliveTimeout 61

    WSGIDaemonProcess neutron-server processes={{.Values.application_server.apache2_processes}} threads=1 user=neutron display-name=%{GROUP}
    WSGIProcessGroup neutron-server
    WSGIScriptAlias / /var/lib/openstack/bin/neutron-api
    WSGIApplicationGroup %{GLOBAL}
    WSGIPassAuthorization On

    <Directory /var/lib/openstack/bin/>
        WSGIProcessGroup neutron-server
        <IfVersion >= 2.4>
            Require all granted
        </IfVersion>
        <IfVersion < 2.4>
            Order allow,deny
            Allow from all
        </IfVersion>
    </Directory>

</VirtualHost>
