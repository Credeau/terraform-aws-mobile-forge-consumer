locals {
  common_tags = {
    Stage    = var.environment
    Owner    = var.stack_owner
    Team     = var.stack_team
    Pipeline = var.application
    Org      = var.organization
  }

  ecr_registry     = format("%s.dkr.ecr.%s.amazonaws.com", data.aws_caller_identity.current.account_id, var.region)
  stack_identifier = format("%s-%s", var.application, var.environment)

  common_consumer_identifier = format("%s-common", local.stack_identifier)
  events_consumer_identifier = format("%s-events", local.stack_identifier)
  sms_consumer_identifier    = format("%s-sms", local.stack_identifier)
  
  # Create a list of metric identifiers for each partition of each topic for each consumer group
  # in the format exported by Kafka module.
  common_consumer_group_metric_identifiers = flatten([
    for topic in var.common_consumer_kafka_topics : [
      for partition in range(var.all_topic_partition_count[topic]) : 
        format("topic_%s_%s_partition%s", local.common_consumer_identifier, topic, partition)
    ]
  ])

  events_consumer_group_metric_identifiers = flatten([
    for topic in var.events_consumer_kafka_topics : [
      for partition in range(var.all_topic_partition_count[topic]) : 
        format("topic_%s_%s_partition%s", local.events_consumer_identifier, topic, partition)
    ]
  ])

  sms_consumer_group_metric_identifiers = flatten([
    for topic in var.sms_consumer_kafka_topics : [
      for partition in range(var.all_topic_partition_count[topic]) : 
        format("topic_%s_%s_partition%s", local.sms_consumer_identifier, topic, partition)
    ]
  ])
}