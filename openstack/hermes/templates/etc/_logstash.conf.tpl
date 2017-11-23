input {

# consume Keystone notifications
rabbitmq {
    # only for keystone
    id => "logstash_hermes_keystone"
    host => "{{.Values.hermes.rabbitmq.keystone.host}}"
    user => "{{.Values.hermes.rabbitmq.keystone.user}}"
    password => "{{.Values.hermes.rabbitmq.keystone.password}}"
    # the remaining parameters are equal
    port => {{.Values.hermes.rabbitmq.port}}
    queue => "{{.Values.hermes.rabbitmq.queue_name}}"
    subscription_retry_interval_seconds => 60
    automatic_recovery => false
  }

{{ if .Values.hermes.rabbitmq.nova.password }}
# consume Nova notifications
rabbitmq {
    # only for nova
    id => "logstash_hermes_nova"
    host => "{{.Values.hermes.rabbitmq.nova.host}}"
    password => "{{.Values.hermes.rabbitmq.nova.password}}"
    # the remaining parameters are equal
    user => "{{.Values.hermes.rabbitmq.user}}"
    port => {{.Values.hermes.rabbitmq.port}}
    queue => "{{.Values.hermes.rabbitmq.queue_name}}"
    subscription_retry_interval_seconds => 60
    automatic_recovery => false
  }
}
{{ end }}


filter {
  # unwrap messagingv2 envelope
  if [oslo.message] {
    json { source => "oslo.message" }
  }
  # Strip oslo header
  ruby {
    code => "
      v1pl = event.get('payload')
      if !v1pl.nil?
        v1pl.each {|k, v|
          event.set(k, v)
        }
        event.remove('payload')
      end
    "
  }
  # remove all the oslo stuff
  mutate {
    remove_field => [ "oslo.message", "oslo.version", "publisher_id", "event_type", "message_id", "priority", "timestamp" ] 
  }

  # KEYSTONE TRANSFORMATIONS

  mutate {
     gsub => [
        # use proper CADF taxonomy for actions
        "action", "created\.", "create/",
        "action", "deleted\.", "delete/",
        "action", "updated\.", "create/",
        "action", "disabled\.", "disable/",
        "action", "\.", "/"
     ]
  }

  # Keystone specific transformations to compensate for scope missing from initiator element
  # When scope is missing from initiator, get it from action-specific parameters
  if ![initiator][project_id] and ![initiator][domain_id] {
    if [project] {
      mutate { rename => { "%{[project]}" => "%{[initiator][project_id]}" } }
    } else if [domain] {
      mutate { rename => { "%{[domain]}" => "%{[initiator][domain_id]}" } }
    }
  }

  # rename initiator user_id into the 'id' field for consistency
  if [initiator][user_id] {
    mutate {
      replace => { "[initiator][id]" => "%{[initiator][user_id]}" } 
      remove_field => ["[initiator][user_id]"]
    }
  }

  # add target projects/domains as attachment
  if [project] {
    ruby {
      code => "
        attachments = event.get('[target][attachments]')
        if attachments.nil?
          attachments = []
        end
        attachments << { 'name' => 'project_id', 'contentType' => '/data/security/project', 'content' => event.get('project') }
        event.set('[target][attachments]', attachments)
      "
    }
  } else if [domain] {
    ruby {
      code => "
        attachments = event.get('[target][attachments]')
        if attachments.nil?
          attachments = []
        end
        attachments << { 'name' => 'domain_id', 'contentType' => '/data/security/domain', 'content' => event.get('domain') }
        event.set('[target][attachments]', attachments)
      "
    }
  }
  if [role] {
    ruby {
      code => "
       attachments = event.get('[target][attachments]')
        if attachments.nil?
          attachments = []
        end
        attachments << { 'name' => 'role_id', 'contentType' => '/data/security/role', 'content' => event.get('role') }
        event.set('[target][attachments]', attachments)
      "
    }
  }

  # replace target ID with real user ID
  if [target][typeURI] == "service/security/account/user" and [user] {
     mutate {
       replace => { "[target][id]" => "%{[user]}" }
       remove_field => ["[user]"]
     }
  }

  # Calculate the variable index name part from payload (@metadata will not be part of the event)

  # primary index
  if [initiator][project_id] {
    mutate { add_field => { "[@metadata][index]" => "%{[initiator][project_id]}" } }
  } else if [initiator][domain_id] {
    mutate { add_field => { "[@metadata][index]" => "%{[initiator][domain_id]}" } }
  }

  # secondary index (keystone only)
  if [project] {
    mutate { add_field => { "[@metadata][index2]" => "%{[project]}" } }
  } else if [domain] {
    mutate { add_field => { "[@metadata][index2]" => "%{[domain]}" } }
  }

  # remove keystone specific fields after they have been mapped to standard attachments 
  mutate {
    remove_field => ["[domain]", "[project]", "[role]"] 
  }

  kv { source => "_source" }
}

output {
  if ([@metadata][index]) {
    elasticsearch {
        index => "audit-%{[@metadata][index]}-%{+YYYY.MM.dd}"
        template => "/hermes-etc/audit.json"
        template_name => "audit"
        template_overwrite => true
        hosts => ["{{.Values.hermes_elasticsearch_host}}:{{.Values.hermes_elasticsearch_port}}"]
        flush_size => 500
    }
  } else {
    elasticsearch {
        index => "audit-default-%{+YYYY.MM.dd}"
        template => "/hermes-etc/audit.json"
        template_name => "audit"
        template_overwrite => true
        hosts => ["{{.Values.hermes_elasticsearch_host}}:{{.Values.hermes_elasticsearch_port}}"]
        flush_size => 500
    }
  }
  # cc the target tenant
  if ([@metadata][index2] and [@metadata][index2] != [@metadata][index]) {
    elasticsearch {
        index => "audit-%{[@metadata][index2]}-%{+YYYY.MM.dd}"
        template => "/hermes-etc/audit.json"
        template_name => "audit"
        template_overwrite => true
        hosts => ["{{.Values.hermes_elasticsearch_host}}:{{.Values.hermes_elasticsearch_port}}"]
        flush_size => 500
    }
  }
}
