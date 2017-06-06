input {
rabbitmq {
    host => "{{.Values.hermes_rabbitmq_host}}"
    user => "{{.Values.hermes_rabbitmq_user}}"
    password => "{{.Values.hermes_rabbitmq_password}}"
    port => {{.Values.hermes_rabbitmq_port}}
    queue => "{{.Values.hermes_rabbitmq_queue_name}}"
    subscription_retry_interval_seconds => 60
    id => "logstash_hermes"
    # From https://www.elastic.co/guide/en/logstash/current/plugins-inputs-rabbitmq.html#plugins-inputs-rabbitmq-automatic_recovery:
    #  Set this to automatically recover from a broken connection. You almost certainly don’t want to override this!!!
    automatic_recovery => true
  }
}

filter {
  if "identity.authenticate" in [event_type] {
    drop { }
  }
  if "dns.domain.exists" in [event_type] {
    drop { }
  }
  if "dns.zone.exists" in [event_type] {
    drop { }
  }
  if ![tenant_id] and "" in [project] {
    mutate { add_field => { "tenant_id" => "%{[project]}" } }
  }
  if ([payload][tenant_id]) {
    mutate { add_field => { "tenant_id" => "%{[payload][tenant_id]}" } }
  }
  if "identity.role_assignment.created" in [event_type] {
    mutate { add_field => { "tenant_id" => "%{[payload][project]}" } }
    }
  if "identity.project" in [event_type] {
    mutate { add_field => { "domain_id" => "%{[payload][initiator][domain_id]}" } }
    }
  if "identity.OS-TRUST" in [event_type] {
    mutate { add_field => { "tenant_id" => "%{[payload][initiator][project_id]}" } }
    }
  kv { source => "_source" }
}

output {
  if ([tenant_id]) {
    elasticsearch {
        index => "audit-%{tenant_id}-%{+YYYY.MM.dd}"
        template => "/hermes-etc/audit.json"
        template_name => "audit"
        template_overwrite => true
        hosts => ["{{.Values.hermes_elasticsearch_host}}:{{.Values.hermes_elasticsearch_port}}"]
        flush_size => 500
    }
  }
  else if ([domain_id]) {
    elasticsearch {
        index => "audit-%{domain_id}-%{+YYYY.MM.dd}"
        template => "/hermes-etc/audit.json"
        template_name => "audit"
        template_overwrite => true
        hosts => ["{{.Values.hermes_elasticsearch_host}}:{{.Values.hermes_elasticsearch_port}}"]
        flush_size => 500
    }
  }
  else {
    elasticsearch {
        index => "audit-default-%{+YYYY.MM.dd}"
        template => "/hermes-etc/audit.json"
        template_name => "audit"
        template_overwrite => true
        hosts => ["{{.Values.hermes_elasticsearch_host}}:{{.Values.hermes_elasticsearch_port}}"]
        flush_size => 500
    }
  }
}
