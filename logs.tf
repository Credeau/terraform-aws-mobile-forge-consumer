resource "aws_cloudwatch_log_group" "common_consumer" {
  name              = format("%s-logs", local.common_consumer_identifier)
  retention_in_days = var.logs_retention_period
  tags              = local.common_tags
}

resource "aws_cloudwatch_log_metric_filter" "common_consumer_errors" {
  count = length(var.log_metric_filters)

  name           = format("%s-%s", local.common_consumer_identifier, var.log_metric_filters[count.index].name)
  log_group_name = aws_cloudwatch_log_group.common_consumer.name
  pattern        = var.log_metric_filters[count.index].filter_pattern

  metric_transformation {
    name      = var.log_metric_filters[count.index].name
    namespace = local.common_consumer_identifier
    value     = 1
  }
}

resource "aws_cloudwatch_log_group" "events_consumer" {
  name              = format("%s-logs", local.events_consumer_identifier)
  retention_in_days = var.logs_retention_period
  tags              = local.common_tags
}

resource "aws_cloudwatch_log_metric_filter" "events_consumer_errors" {
  count = length(var.log_metric_filters)

  name           = format("%s-%s", local.events_consumer_identifier, var.log_metric_filters[count.index].name)
  log_group_name = aws_cloudwatch_log_group.events_consumer.name
  pattern        = var.log_metric_filters[count.index].filter_pattern

  metric_transformation {
    name      = var.log_metric_filters[count.index].name
    namespace = local.events_consumer_identifier
    value     = 1
  }
}

resource "aws_cloudwatch_log_group" "sms_consumer" {
  name              = format("%s-logs", local.sms_consumer_identifier)
  retention_in_days = var.logs_retention_period
  tags              = local.common_tags
}

resource "aws_cloudwatch_log_metric_filter" "sms_consumer_errors" {
  count = length(var.log_metric_filters)

  name           = format("%s-%s", local.sms_consumer_identifier, var.log_metric_filters[count.index].name)
  log_group_name = aws_cloudwatch_log_group.sms_consumer.name
  pattern        = var.log_metric_filters[count.index].filter_pattern

  metric_transformation {
    name      = var.log_metric_filters[count.index].name
    namespace = local.sms_consumer_identifier
    value     = 1
  }
}