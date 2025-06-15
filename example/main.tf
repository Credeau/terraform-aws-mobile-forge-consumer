data "aws_ssm_parameter" "mongo_user_name" {
  name            = "DUMMY_MONGO_USER"
  with_decryption = true
}

data "aws_ssm_parameter" "mongo_password" {
  name            = "DUMMY_MONGO_PASSWORD"
  with_decryption = true
}

data "aws_ssm_parameter" "postgres_user_name" {
  name            = "DUMMY_POSTGRES_USER"
  with_decryption = true
}

data "aws_ssm_parameter" "postgres_password" {
  name            = "DUMMY_POSTGRES_PASSWORD"
  with_decryption = true
}

module "consumer" {
  source = "git::https://github.com/credeau/terraform-aws-mobile-forge-consumer.git?ref=v1.0.0"

  application            = "di-consumer"
  environment            = "prod"
  region                 = "ap-south-1"
  stack_owner            = "tech@credeau.com"
  stack_team             = "devops"
  organization           = "credeau"
  alert_email_recipients = []

  ecr_repository              = "mobile-forge-consumer"
  ecr_image_tag               = "0.7.2"
  root_volume_size            = 20
  ami_id                      = "ami-00000000000000000"
  key_name                    = "mobile-forge-demo"
  upscale_evaluation_period   = 60
  downscale_evaluation_period = 300
  logs_retention_period       = 7
  scaling_cpu_threshold       = 65
  scaling_memory_threshold    = 50
  scaling_disk_threshold      = 70
  mapped_port                 = 8000
  application_port            = 8000
  timezone                    = "Asia/Kolkata"
  enable_scheduled_scaling    = true
  upscale_schedule            = "0 8 * * MON-SUN"
  downscale_schedule          = "0 21 * * MON-SUN"

  all_topic_partition_count = {
    "sms_batched"             = 20
    "apps_and_device_batched" = 10
    "contacts_batched"        = 5
    "call_logs_batched"       = 5
    "events_log"              = 20
    "dev_things"              = 5
  }

  common_consumer_instance_type                  = "t3a.medium"
  common_consumer_asg_min_size                   = 2
  common_consumer_asg_max_size                   = 5
  common_consumer_asg_desired_size               = 2
  scheduled_upscale_common_consumer_min_size     = 5
  scheduled_upscale_common_consumer_max_size     = 10
  scheduled_upscale_common_consumer_desired_size = 5
  common_consumer_kafka_topics = [
    "apps_and_device_batched",
    "contacts_batched",
    "call_logs_batched"
  ]

  events_consumer_instance_type                  = "t3a.medium"
  events_consumer_asg_min_size                   = 2
  events_consumer_asg_max_size                   = 10
  events_consumer_asg_desired_size               = 2
  scheduled_upscale_events_consumer_min_size     = 5
  scheduled_upscale_events_consumer_max_size     = 20
  scheduled_upscale_events_consumer_desired_size = 5
  events_consumer_kafka_topics = [
    "events_log"
  ]

  sms_consumer_instance_type                  = "t3a.medium"
  sms_consumer_asg_min_size                   = 2
  sms_consumer_asg_max_size                   = 10
  sms_consumer_asg_desired_size               = 2
  scheduled_upscale_sms_consumer_min_size     = 5
  scheduled_upscale_sms_consumer_max_size     = 20
  scheduled_upscale_sms_consumer_desired_size = 5
  sms_consumer_kafka_topics = [
    "sms_batched"
  ]

  vpc_id = "vpc-00000000000000000"
  private_subnet_ids = [
    "subnet-00000000000000000",
    "subnet-00000000000000000",
  ]
  internal_security_groups = ["sg-00000000000000000"]
  kafka_broker_hosts       = [format("%s:9092", module.kafka.host_address)]
  kafka_host_identifier    = module.kafka.instance_id
  enable_lag_monitoring    = true
  postgres_user_name       = data.aws_ssm_parameter.postgres_user_name.value
  postgres_password        = data.aws_ssm_parameter.postgres_password.value
  postgres_host            = aws_db_instance.postgres.address
  postgres_port            = 5432
  postgres_db              = aws_db_instance.postgres.db_name
  mongo_username           = data.aws_ssm_parameter.mongo_user_name.value
  mongo_password           = data.aws_ssm_parameter.mongo_password.value
  mongo_host               = module.mongo.host_address
  mongo_port               = 27017
  mongo_db                 = "sync_db"
  mongo_enabled_sources    = ["*"]
}

output "consumer" {
  value = module.consumer
}