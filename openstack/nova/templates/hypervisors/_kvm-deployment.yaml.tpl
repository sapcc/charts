{{- define "kvm_hypervisor" }}
{{- $hypervisor := index . 1 }}
{{- with index . 0 }}
kind: Deployment
apiVersion: extensions/v1beta1
metadata:
  name: nova-compute-{{$hypervisor.name}}
  labels:
    system: openstack
    type: backend
    component: nova
spec:
  replicas: 1
  revisionHistoryLimit: {{ .Values.pod.lifecycle.upgrades.deployments.revision_history }}
  strategy:
    type: Recreate
  selector:
    matchLabels:
      name: nova-compute-{{$hypervisor.name}}
  template:
    metadata:
      labels:
        name: nova-compute-{{$hypervisor.name}}
{{ tuple . "nova" (print "compute-" $hypervisor.name) | include "helm-toolkit.snippets.kubernetes_metadata_labels" | indent 8 }}
      annotations:
        {{- if le .Capabilities.KubeVersion.Minor "6" }}
        scheduler.alpha.kubernetes.io/tolerations: '[{"key":"species","value":"hypervisor"}]'
        {{- end }}
        configmap-etc-hash: {{ include (print .Template.BasePath "/etc-configmap.yaml") . | sha256sum }}
        configmap-ironic-etc-hash: {{ tuple . $hypervisor | include "kvm_configmap" | sha256sum }}
    spec:
      hostNetwork: true
      hostPID: true
      hostIPC: true
      nodeSelector:
        kubernetes.io/hostname: {{$hypervisor.node_name}}
      {{- if ge .Capabilities.KubeVersion.Minor "7" }}
      tolerations:
      - key: "species"
        operator: "Equal"
        value: "hypervisor"
        effect: "NoSchedule"
      {{- end }}
      containers:
        - name: nova-compute-minion1
          image: {{.Values.global.imageRegistry}}/{{.Values.global.image_namespace}}/ubuntu-source-nova-compute:{{.Values.imageVersionNovaCompute | default .Values.imageVersion | required "Please set nova.imageVersion or similar" }}
          imagePullPolicy: IfNotPresent
          securityContext:
            privileged: true
          command:
            - kubernetes-entrypoint
          env:
            - name: COMMAND
              value: "nova-compute"
            - name: NAMESPACE
              value: {{ .Release.Namespace }}
            - name: SENTRY_DSN
              value: {{.Values.sentry_dsn | quote}}
{{- if or $hypervisor.python_warnings .Values.python_warnings }}
            - name: PYTHONWARNINGS
              value: {{ or $hypervisor.python_warnings .Values.python_warnings | quote }}
{{- end }}
          volumeMounts:
            - mountPath: /var/lib/nova/instances
              name: instances
            - mountPath: /var/lib/libvirt
              name: libvirt
            - mountPath: /lib/modules
              name: modules
              readOnly: true
            - mountPath: /var/run
              name: run
            - mountPath: /etc/nova
              name: etcnova
            - mountPath: /etc/nova/nova.conf
              name: nova-etc
              subPath: nova.conf
              readOnly: true
            - mountPath: /etc/nova/policy.json
              name: nova-etc
              subPath: policy.json
              readOnly: true
            - mountPath: /etc/nova/logging.ini
              name: nova-etc
              subPath: logging.ini
              readOnly: true
            - mountPath: /etc/nova/nova-compute.conf
              name: hypervisor-config
              subPath: nova-compute.conf
              readOnly: true
            - mountPath: /nova-patches
              name: nova-patches
        - name: nova-libvirt
          image: {{.Values.global.imageRegistry}}/{{.Values.global.image_namespace}}/ubuntu-source-nova-libvirt:{{.Values.imageVersionNovaLibvirt | default .Values.imageVersion | required "Please set nova.imageVersion or similar" }}
          imagePullPolicy: IfNotPresent
          securityContext:
            privileged: true
          command:
            - kubernetes-entrypoint
          env:
            - name: COMMAND
              value: /container.init/nova-libvirt-start
            - name: NAMESPACE
              value: {{ .Release.Namespace }}
            - name: SENTRY_DSN
              value: {{.Values.sentry_dsn | quote}}
          volumeMounts:
            - mountPath: /var/lib/nova/instances
              name: instances
            - mountPath: /var/lib/libvirt
              name: libvirt
            - mountPath: /var/run
              name: run
            - mountPath: /lib/modules
              name: modules
              readOnly: true
            - mountPath: /etc/nova
              name: etcnova
            - mountPath: /etc/nova/nova.conf
              name: nova-etc
              subPath: nova.conf
              readOnly: true
            - mountPath: /etc/nova/policy.json
              name: nova-etc
              subPath: policy.json
              readOnly: true
            - mountPath: /etc/nova/logging.ini
              name: nova-etc
              subPath: logging.ini
              readOnly: true
            - mountPath: /etc/libvirt
              name: etclibvirt
            - mountPath: /etc/libvirt/libvirtd.conf
              name: hypervisor-config
              subPath: libvirtd.conf
              readOnly: true
            - mountPath: /container.init
              name: nova-container-init
        - name: nova-virtlog
          image: {{.Values.global.imageRegistry}}/{{.Values.global.image_namespace}}/ubuntu-source-nova-libvirt:{{.Values.imageVersionNovaLibvirt | default .Values.imageVersion | required "Please set nova.imageVersion or similar"}}
          imagePullPolicy: IfNotPresent
          securityContext:
            privileged: true
          command:
            - kubernetes-entrypoint
          env:
            - name: COMMAND
              value: /usr/sbin/virtlogd
            - name: NAMESPACE
              value: {{ .Release.Namespace }}
            - name: SENTRY_DSN
              value: {{.Values.sentry_dsn | quote}}
          volumeMounts:
            - mountPath: /var/lib/nova/instances
              name: instances
            - mountPath: /var/lib/libvirt
              name: libvirt
            - mountPath: /var/run
              name: run
            - mountPath: /lib/modules
              name: modules
              readOnly: true
            - mountPath: /etc/nova
              name: etcnova
            - mountPath: /etc/nova/nova.conf
              name: nova-etc
              subPath: nova.conf
              readOnly: true
            - mountPath: /etc/nova/policy.json
              name: nova-etc
              subPath: policy.json
              readOnly: true
            - mountPath: /etc/nova/logging.ini
              name: nova-etc
              subPath: logging.ini
              readOnly: true
            - mountPath: /etc/libvirt
              name: etclibvirt
            - mountPath: /etc/libvirt/libvirtd.conf
              name: hypervisor-config
              subPath: libvirtd.conf
              readOnly: true
            - mountPath: /container.init
              name: nova-container-init
        - name: neutron-ovs-agent
          image: {{.Values.global.imageRegistry}}/{{.Values.global.image_namespace}}/ubuntu-source-neutron-openvswitch-agent:{{.Values.imageVersionNeutronOpenvswitchAgent}}
          imagePullPolicy: IfNotPresent
          securityContext:
            privileged: true
          command:
            - /container.init/neutron-ovs-agent-start
          volumeMounts:
            - mountPath: /var/run/
              name: run
            - mountPath: /lib/modules
              name: modules
              readOnly: true
            - mountPath: /neutron-etc
              name: neutron-etc
            - mountPath: /container.init
              name: neutron-container-init
        - name: ovs
          image: {{.Values.global.imageRegistry}}/{{.Values.global.image_namespace}}/ubuntu-source-openvswitch-vswitchd:{{.Values.imageVersionNeutronVswitchd}}
          imagePullPolicy: IfNotPresent
          securityContext:
            privileged: true
          command:
            - /container.init/neutron-ovs-start
          volumeMounts:
            - mountPath: /var/run/
              name: run
            - mountPath: /lib/modules
              name: modules
              readOnly: true
            - mountPath: /container.init
              name: neutron-container-init
        - name: ovs-db
          image: {{.Values.global.imageRegistry}}/{{.Values.global.image_namespace}}/ubuntu-source-openvswitch-db-server:{{.Values.imageVersionNeutronVswitchdb}}
          imagePullPolicy: IfNotPresent
          securityContext:
            privileged: true
          command:
            - /container.init/neutron-ovs-db-start
          volumeMounts:
            - mountPath: /var/run/
              name: run
            - mountPath: /lib/modules
              name: modules
            - mountPath: /container.init
              name: neutron-container-init
      volumes:
        - name : instances
          persistentVolumeClaim:
            claimName: kvm-shared1-pvclaim
        - name : libvirt
          emptyDir:
            medium: Memory
        - name : run
          emptyDir:
            medium: Memory
        - name : modules
          hostPath:
            path: /lib/modules
        - name : cgroup
          hostPath:
            path: /sys/fs/cgroup
        - name: hypervisor-config
          configMap:
            name: hypervisor-{{$hypervisor.name}}
        - name: etclibvirt
          emptyDir: {}
        - name: etcnova
          emptyDir: {}
        - name: nova-etc
          configMap:
            name: nova-etc
        - name: nova-patches
          configMap:
            name: nova-patches
        - name: neutron-etc
          configMap:
            name: neutron-etc
        - name: nova-container-init
          configMap:
            name: nova-bin
            defaultMode: 0755
        - name: neutron-container-init
          configMap:
            name: neutron-bin
            defaultMode: 0755
{{- end }}
{{- end }}
