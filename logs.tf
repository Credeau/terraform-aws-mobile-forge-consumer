resource "aws_cloudwatch_log_group" "common_consumer" {
  name              = format("%s-logs", local.common_consumer_identifier)
  retention_in_days = var.logs_retention_period
  tags              = local.common_tags
}

resource "aws_cloudwatch_log_group" "events_consumer" {
  name              = format("%s-logs", local.events_consumer_identifier)
  retention_in_days = var.logs_retention_period
  tags              = local.common_tags
}

resource "aws_cloudwatch_log_group" "sms_consumer" {
  name              = format("%s-logs", local.sms_consumer_identifier)
  retention_in_days = var.logs_retention_period
  tags              = local.common_tags
}