{{- define "prometheus_yaml" -}}
rule_files:
  - ./*.rules

global:
  scrape_timeout: 55s

scrape_configs:
# Scrape config for service endpoints.
#
# The relabeling allows the actual service scrape endpoint to be configured
# via the following annotations:
#
# * `prometheus.io/scrape`: Only scrape services that have a value of `true`
# * `prometheus.io/scheme`: If the metrics endpoint is secured then you will need
# to set this to `https` & most likely set the `tls_config` of the scrape config.
# * `prometheus.io/path`: If the metrics path is not `/metrics` override this.
# * `prometheus.io/port`: If the metrics are exposed on a different port to the
# service then set this appropriately.
- job_name: 'endpoints'
  kubernetes_sd_configs:
  - role: endpoints
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_service_annotation_prometheus_io_scrape]
    regex: true
  - action: keep
    source_labels: [__meta_kubernetes_pod_container_port_number, __meta_kubernetes_pod_container_port_name, __meta_kubernetes_service_annotation_prometheus_io_port]
    regex: (9102;.*;.*)|(.*;metrics;.*)|(.+;.*;\d+)
  - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_scheme]
    target_label: __scheme__
    regex: (https?)
  - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_path]
    target_label: __metrics_path__
    regex: (.+)
  - source_labels: [__address__, __meta_kubernetes_service_annotation_prometheus_io_port]
    target_label: __address__
    regex: ([^:]+)(?::\d+);(\d+)
    replacement: $1:$2
  - action: labelmap
    regex: __meta_kubernetes_service_label_(.+)
  - source_labels: [__meta_kubernetes_namespace]
    target_label: kubernetes_namespace
  - source_labels: [__meta_kubernetes_service_name]
    target_label: kubernetes_name

# Example scrape config for pods
#
# The relabeling allows the actual pod scrape endpoint to be configured via the
# following annotations:
#
# * `prometheus.io/scrape`: Only scrape pods that have a value of `true`
# * `prometheus.io/path`: If the metrics path is not `/metrics` override this.
# * `prometheus.io/port`: Scrape the pod on the indicated port instead of the default of `9102`.
- job_name: 'pods'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_scrape]
    regex: true
  - action: keep
    source_labels: [__meta_kubernetes_pod_container_port_number, __meta_kubernetes_pod_container_port_name, __meta_kubernetes_pod_annotation_prometheus_io_port]
    regex: (9102;.*;.*)|(.*;metrics;.*)|(__meta_kubernetes_pod_annotation_prometheus_io_port;.*;.+)
  - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_path]
    target_label: __metrics_path__
    regex: (.+)
  - source_labels: [__address__, __meta_kubernetes_pod_annotation_prometheus_io_port]
    target_label: __address__
    regex: ([^:]+)(?::\d+);(\d+)
    replacement: ${1}:${2}
  - action: labelmap
    regex: __meta_kubernetes_pod_label_(.+)
  - source_labels: [__meta_kubernetes_namespace]
    target_label: kubernetes_namespace
  - source_labels: [__meta_kubernetes_pod_name]
    target_label: kubernetes_pod_name


- job_name: 'kube-system/etcd'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_namespace]
    regex: kube-system 
  - action: keep
    source_labels: [__meta_kubernetes_pod_name]
    regex: (etcd-[^\.]+).+
  - source_labels: [__address__]
    target_label: __address__
    replacement: ${1}:2379
  - target_label: component
    replacement: etcd
  - action: replace
    source_labels: [__meta_kubernetes_pod_node_name]
    target_label: instance

- job_name: 'kube-system/apiserver'
  tls_config:
    ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt
  bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
  scheme: https
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_namespace]
    regex: kube-system 
  - action: keep
    source_labels: [__meta_kubernetes_pod_name]
    regex: (kubernetes-master[^\.]+).+
  - target_label: component
    replacement: apiserver
  - action: replace
    source_labels: [__meta_kubernetes_pod_node_name]
    target_label: instance

- job_name: 'kube-system/controller-manager'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_namespace]
    regex: kube-system 
  - action: keep
    source_labels: [__meta_kubernetes_pod_name]
    regex: (kubernetes-master[^\.]+).+
  - source_labels: [__address__]
    action: replace
    regex: (.+)
    replacement: ${1}:10252
    target_label: __address__
  - target_label: component
    replacement: controller-manager
  - action: replace
    source_labels: [__meta_kubernetes_pod_node_name]
    target_label: instance

- job_name: 'kube-system/scheduler'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_namespace]
    regex: kube-system 
  - action: keep
    source_labels: [__meta_kubernetes_pod_name]
    regex: (kubernetes-master[^\.]+).+
  - source_labels: [__address__]
    replacement: ${1}:10251
    target_label: __address__
  - target_label: component
    replacement: scheduler
  - action: replace
    source_labels: [__meta_kubernetes_pod_node_name]
    target_label: instance

- job_name: 'kube-system/dnsmasq'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_namespace]
    regex: kube-system 
  - action: keep
    source_labels: [__meta_kubernetes_pod_name]
    regex: (kube-dns[^\.]+).+
  - source_labels: [__address__]
    target_label: __address__
    regex: ([^:]+)(:\d+)?
    replacement: ${1}:10054
  - target_label: component
    replacement: dnsmasq
  - action: replace
    source_labels: [__meta_kubernetes_pod_node_name]
    target_label: instance

- job_name: 'kube-system/dns'
  kubernetes_sd_configs:
  - role: pod
  relabel_configs:
  - action: keep
    source_labels: [__meta_kubernetes_namespace]
    regex: kube-system 
  - action: keep
    source_labels: [__meta_kubernetes_pod_name]
    regex: (kube-dns[^\.]+).+
  - source_labels: [__address__]
    target_label: __address__
    regex: ([^:]+)(:\d+)?
    replacement: ${1}:10055
  - target_label: component
    replacement: dns 
  - action: replace
    source_labels: [__meta_kubernetes_pod_node_name]
    target_label: instance

- job_name: 'kube-system/kubelet'
  scheme: https
  tls_config:
    ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt
  bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
  kubernetes_sd_configs:
  - role: node
  relabel_configs:
  - action: labelmap
    regex: __meta_kubernetes_node_label_(.+)
  - target_label: component
    replacement: kubelet
  - action: replace
    source_labels: [__meta_kubernetes_node_name]
    target_label: instance
  metric_relabel_configs:
  - source_labels: [id]
    regex:  '.+(mount|service)'
    action: drop

- job_name: 'kube-system/node'
  kubernetes_sd_configs:
  - role: node
  relabel_configs:
  - action: labelmap
    regex: __meta_kubernetes_node_label_(.+)
  - target_label: component
    replacement: node 
  - action: replace
    source_labels: [__meta_kubernetes_node_name]
    target_label: instance
  - source_labels: [__address__]
    target_label: __address__
    regex: ([^:]+)(:\d+)?
    replacement: ${1}:9100

# Static Targets 
#
- job_name: 'prometheus-collector'
  static_configs:
    - targets: ['localhost:9090']

{{ .Values.additional_scrape_configs }}

{{- end -}}
