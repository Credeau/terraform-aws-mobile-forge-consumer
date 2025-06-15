# -----------------------------------------------
# Application and Environment Variables
# -----------------------------------------------
variable "application" {
  type        = string
  description = "application name to refer and mnark across the module"
  default     = "di-consumer"
}

variable "environment" {
  type        = string
  description = "environment type"
  default     = "dev"

  validation {
    condition     = contains(["dev", "prod", "uat"], var.environment)
    error_message = "Environment must be one of: dev, prod, or uat."
  }
}

variable "region" {
  type        = string
  description = "aws region to use"
  default     = "ap-south-1"
}

variable "stack_owner" {
  type        = string
  description = "owner of the stack"
  default     = "tech@credeau.com"
}

variable "stack_team" {
  type        = string
  description = "team of the stack"
  default     = "devops"
}

variable "organization" {
  type        = string
  description = "organization name"
  default     = "credeau"
}

variable "alert_email_recipients" {
  type        = list(string)
  description = "email recipients for sns alerts"
  default     = []
}

# -----------------------------------------------
# Server & Scaling Variables
# -----------------------------------------------

variable "ecr_repository" {
  type        = string
  description = "aws sync ecr repository"
  default     = "device-insights-consumer"
}

variable "ecr_image_tag" {
  type        = string
  description = "aws sync ecr repository image tag"
  default     = "latest"
}

variable "root_volume_size" {
  type        = number
  description = "size of root volume in GiB"
  default     = 20
}

variable "ami_id" {
  type        = string
  description = "ami to use for instances"
}

variable "key_name" {
  type        = string
  description = "ssh access key name"
}

variable "upscale_evaluation_period" {
  type        = number
  description = "Number of seconds required to observe the system before triggering upscale"
  default     = 60

  validation {
    condition     = var.upscale_evaluation_period == 10 || var.upscale_evaluation_period == 30 || var.upscale_evaluation_period % 60 == 0
    error_message = "Scaling evaluation period can only be 10, 30 or any multiple of 60."
  }
}

variable "downscale_evaluation_period" {
  type        = number
  description = "Number of seconds required to observe the system before triggering downscale"
  default     = 300

  validation {
    condition     = var.downscale_evaluation_period == 10 || var.downscale_evaluation_period == 30 || var.downscale_evaluation_period % 60 == 0
    error_message = "Scaling evaluation period can only be 10, 30 or any multiple of 60."
  }
}

variable "logs_retention_period" {
  type        = number
  description = "No of days to retain the logs"
  default     = 7
}

variable "scaling_cpu_threshold" {
  type        = number
  description = "CPU utilization % threshold for scaling & alerting"
  default     = 65
}

variable "scaling_memory_threshold" {
  type        = number
  description = "Memory utilization % threshold for scaling & alerting"
  default     = 60
}

variable "scaling_disk_threshold" {
  type        = number
  description = "Disk utilization % threshold for scaling & alerting"
  default     = 80
}

variable "mapped_port" {
  type        = number
  description = "mapped port to expose the application"
  default     = 8000
}

variable "application_port" {
  type        = number
  description = "application port to run the application"
  default     = 8000
}

variable "timezone" {
  type        = string
  description = "timezone to use for scheduled scaling"
  default     = "Asia/Kolkata"
}

variable "enable_scheduled_scaling" {
  type        = bool
  description = "enable scheduled scaling"
  default     = false
}

variable "upscale_schedule" {
  type        = string
  description = "upscale schedule"
  default     = "0 8 * * MON-SUN"
}

variable "downscale_schedule" {
  type        = string
  description = "downscale schedule"
  default     = "0 21 * * MON-SUN"
}

variable "all_topic_partition_count" {
  type        = map(number)
  description = "number of partitions for all topics"
  default     = {
    "sms_batched"             = 20
    "apps_and_device_batched" = 10
    "contacts_batched"        = 5
    "call_logs_batched"       = 5
    "events_log"              = 20
    "dev_things"              = 5
  }
}

# -----------------------------------------------
# Common Consumer Variables
# -----------------------------------------------
variable "common_consumer_instance_type" {
  type        = string
  description = "Instances type to provision in ASG for common consumer"
  default     = "t2.micro"
}

variable "common_consumer_asg_min_size" {
  type        = number
  description = "minimum number of instances to keep in asg for common consumer"
  default     = 2
}

variable "common_consumer_asg_max_size" {
  type        = number
  description = "maximum number of instances to keep in asg for common consumer"
  default     = 5
}

variable "common_consumer_asg_desired_size" {
  type        = number
  description = "number of instances to provision for common consumer"
  default     = 2
}

variable "scheduled_upscale_common_consumer_min_size" {
  type        = number
  description = "minimum number of instances to keep in common consumer asg for scheduled upscale"
  default     = 5
}

variable "scheduled_upscale_common_consumer_max_size" {
  type        = number
  description = "maximum number of instances to keep in common consumer asg for scheduled upscale"
  default     = 5
}

variable "scheduled_upscale_common_consumer_desired_size" {
  type        = number
  description = "desired number of instances to keep in common consumer asg for scheduled upscale"
  default     = 5
}

variable "common_consumer_kafka_topics" {
  type        = list(string)
  description = "kafka topics for common consumer"
  default = [
    "dev_things",
    "apps_and_device_batched",
    "contacts_batched",
    "call_logs_batched",
    "web_batched"
  ]
}

# -----------------------------------------------
# Events Consumer Variables
# -----------------------------------------------
variable "events_consumer_instance_type" {
  type        = string
  description = "Instances type to provision in ASG for events consumer"
  default     = "t2.micro"
}

variable "events_consumer_asg_min_size" {
  type        = number
  description = "minimum number of instances to keep in asg for events consumer"
  default     = 2
}

variable "events_consumer_asg_max_size" {
  type        = number
  description = "maximum number of instances to keep in asg for events consumer"
  default     = 5
}

variable "events_consumer_asg_desired_size" {
  type        = number
  description = "number of instances to provision for events consumer"
  default     = 2
}

variable "scheduled_upscale_events_consumer_min_size" {
  type        = number
  description = "minimum number of instances to keep in events consumer asg for scheduled upscale"
  default     = 5
}

variable "scheduled_upscale_events_consumer_max_size" {
  type        = number
  description = "maximum number of instances to keep in events consumer asg for scheduled upscale"
  default     = 10
}

variable "scheduled_upscale_events_consumer_desired_size" {
  type        = number
  description = "desired number of instances to keep in events consumer asg for scheduled upscale"
  default     = 5
}

variable "events_consumer_kafka_topics" {
  type        = list(string)
  description = "kafka topics for events consumer"
  default = [
    "events_log"
  ]
}

# -----------------------------------------------
# SMS Consumer Variables
# -----------------------------------------------
variable "sms_consumer_instance_type" {
  type        = string
  description = "Instances type to provision in ASG for sms consumer"
  default     = "t2.micro"
}

variable "sms_consumer_asg_min_size" {
  type        = number
  description = "minimum number of instances to keep in asg for sms consumer"
  default     = 2
}

variable "sms_consumer_asg_max_size" {
  type        = number
  description = "maximum number of instances to keep in asg for sms consumer"
  default     = 5
}

variable "sms_consumer_asg_desired_size" {
  type        = number
  description = "number of instances to provision for sms consumer"
  default     = 2
}

variable "scheduled_upscale_sms_consumer_min_size" {
  type        = number
  description = "minimum number of instances to keep in sms consumer asg for scheduled upscale"
  default     = 5
}

variable "scheduled_upscale_sms_consumer_max_size" {
  type        = number
  description = "maximum number of instances to keep in sms consumer asg for scheduled upscale"
  default     = 10
}

variable "scheduled_upscale_sms_consumer_desired_size" {
  type        = number
  description = "desired number of instances to keep in sms consumer asg for scheduled upscale"
  default     = 5
}

variable "sms_consumer_kafka_topics" {
  type        = list(string)
  description = "kafka topics for sms consumer"
  default = [
    "sms_batched"
  ]
}

# -----------------------------------------------
# Network & Security Variables
# -----------------------------------------------

variable "vpc_id" {
  type        = string
  description = "vpc id"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "list of private subnet ids to use"
}

variable "internal_security_groups" {
  type        = list(string)
  description = "list of internal access security group ids"
  default     = []
}

# -----------------------------------------------
# External Dependencies Variables
# -----------------------------------------------

variable "kafka_broker_hosts" {
  type        = list(string)
  description = "kafka broker hosts"
  default     = []
}

variable "postgres_user_name" {
  type        = string
  description = "postgres user name"
  default     = null
}

variable "postgres_password" {
  type        = string
  description = "postgres user password"
  default     = null
}

variable "postgres_host" {
  type        = string
  description = "postgres host"
  default     = null
}

variable "postgres_port" {
  type        = number
  description = "postgres port"
  default     = 5432
}

variable "postgres_db" {
  type        = string
  description = "postgres main database"
  default     = null
}

variable "mongo_username" {
  type        = string
  description = "mongo username"
  default     = null
}

variable "mongo_password" {
  type        = string
  description = "mongo password"
  default     = null
}

variable "mongo_host" {
  type        = string
  description = "mongo host"
  default     = null
}

variable "mongo_port" {
  type        = string
  description = "mongo port"
  default     = 27017
}

variable "mongo_db" {
  type        = string
  description = "mongo database"
  default     = null
}

variable "mongo_enabled_sources" {
  type        = list(string)
  description = "mongo enabled sources"
  default     = ["*"]
}

variable "mongo_max_pool_size" {
  type        = number
  description = "mongo max pool size"
  default     = 40
}

variable "mongo_min_pool_size" {
  type        = number
  description = "mongo min pool size"
  default     = 2
}

variable "mongo_server_selection_timeout_ms" {
  type        = number
  description = "mongo server selection timeout"
  default     = 30000
}

variable "mongo_connect_timeout_ms" {
  type        = number
  description = "mongo connect timeout"
  default     = 30000
}

variable "mongo_socket_timeout_ms" {
  type        = number
  description = "mongo socket timeout"
  default     = 30000
}

variable "mongo_retry_writes" {
  type        = bool
  description = "mongo retry writes"
  default     = true
}

variable "mongo_wait_queue_timeout_ms" {
  type        = number
  description = "mongo wait queue timeout"
  default     = 5000
}
