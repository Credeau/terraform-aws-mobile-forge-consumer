# terraform-aws-mobile-forge-consumer
Terraform module for deploying and managing AWS infrastructure for Mobile Forge Consumer.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.common_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_group.events_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_group.sms_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_policy.common_consumer_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_policy.common_consumer_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_policy.events_consumer_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_policy.events_consumer_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_policy.sms_consumer_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_policy.sms_consumer_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_schedule.common_consumer_scheduled_scaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_schedule) | resource |
| [aws_autoscaling_schedule.events_consumer_scheduled_scaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_schedule) | resource |
| [aws_autoscaling_schedule.sms_consumer_scheduled_scaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_schedule) | resource |
| [aws_cloudwatch_log_group.common_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.events_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.sms_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_metric_filter.common_consumer_errors](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter) | resource |
| [aws_cloudwatch_log_metric_filter.events_consumer_errors](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter) | resource |
| [aws_cloudwatch_log_metric_filter.sms_consumer_errors](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter) | resource |
| [aws_cloudwatch_metric_alarm.apps_and_device_topic_lag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.call_logs_topic_lag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.common_consumer_asg_cpu_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.common_consumer_asg_disk](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.common_consumer_asg_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.common_consumer_asg_memory_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.common_consumer_asg_memory_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.contacts_topic_lag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.events_consumer_asg_cpu_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.events_consumer_asg_cpu_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.events_consumer_asg_disk](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.events_consumer_asg_memory_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.events_consumer_asg_memory_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.events_topic_lag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.sms_consumer_asg_cpu_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.sms_consumer_asg_cpu_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.sms_consumer_asg_memory_downscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.sms_consumer_asg_memory_upscale](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.sms_topic_lag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_iam_instance_profile.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.consumer_scale_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.consumer_scale_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.ssh_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_launch_template.common_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.events_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.sms_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_placement_group.common_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/placement_group) | resource |
| [aws_placement_group.events_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/placement_group) | resource |
| [aws_placement_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/placement_group) | resource |
| [aws_placement_group.sms_consumer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/placement_group) | resource |
| [aws_sns_topic.alert_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.email_subscriptions](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_email_recipients"></a> [alert\_email\_recipients](#input\_alert\_email\_recipients) | email recipients for sns alerts | `list(string)` | `[]` | no |
| <a name="input_all_topic_partition_count"></a> [all\_topic\_partition\_count](#input\_all\_topic\_partition\_count) | number of partitions for all topics | `map(number)` | <pre>{<br>  "apps_and_device_batched": 10,<br>  "call_logs_batched": 5,<br>  "contacts_batched": 5,<br>  "dev_things": 5,<br>  "events_log": 20,<br>  "sms_batched": 20<br>}</pre> | no |
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ami to use for instances | `string` | n/a | yes |
| <a name="input_application"></a> [application](#input\_application) | application name to refer and mnark across the module | `string` | `"di-consumer"` | no |
| <a name="input_application_port"></a> [application\_port](#input\_application\_port) | application port to run the application | `number` | `8000` | no |
| <a name="input_common_consumer_asg_desired_size"></a> [common\_consumer\_asg\_desired\_size](#input\_common\_consumer\_asg\_desired\_size) | number of instances to provision for common consumer | `number` | `2` | no |
| <a name="input_common_consumer_asg_max_size"></a> [common\_consumer\_asg\_max\_size](#input\_common\_consumer\_asg\_max\_size) | maximum number of instances to keep in asg for common consumer | `number` | `5` | no |
| <a name="input_common_consumer_asg_min_size"></a> [common\_consumer\_asg\_min\_size](#input\_common\_consumer\_asg\_min\_size) | minimum number of instances to keep in asg for common consumer | `number` | `2` | no |
| <a name="input_common_consumer_instance_type"></a> [common\_consumer\_instance\_type](#input\_common\_consumer\_instance\_type) | Instances type to provision in ASG for common consumer | `string` | `"t2.micro"` | no |
| <a name="input_common_consumer_kafka_topics"></a> [common\_consumer\_kafka\_topics](#input\_common\_consumer\_kafka\_topics) | kafka topics for common consumer | `list(string)` | <pre>[<br>  "dev_things",<br>  "apps_and_device_batched",<br>  "contacts_batched",<br>  "call_logs_batched"<br>]</pre> | no |
| <a name="input_common_consumer_scaling_schedules"></a> [common\_consumer\_scaling\_schedules](#input\_common\_consumer\_scaling\_schedules) | scaling schedules for common consumer | <pre>list(object({<br>    cron_expression  = string<br>    min_size         = number<br>    max_size         = number<br>    desired_capacity = number<br>  }))</pre> | <pre>[<br>  {<br>    "cron_expression": "0 8 * * MON-SUN",<br>    "desired_capacity": 5,<br>    "max_size": 10,<br>    "min_size": 5<br>  },<br>  {<br>    "cron_expression": "0 21 * * MON-SUN",<br>    "desired_capacity": 2,<br>    "max_size": 10,<br>    "min_size": 2<br>  }<br>]</pre> | no |
| <a name="input_downscale_evaluation_period"></a> [downscale\_evaluation\_period](#input\_downscale\_evaluation\_period) | Number of seconds required to observe the system before triggering downscale | `number` | `300` | no |
| <a name="input_ecr_image_tag"></a> [ecr\_image\_tag](#input\_ecr\_image\_tag) | aws sync ecr repository image tag | `string` | `"latest"` | no |
| <a name="input_ecr_repository"></a> [ecr\_repository](#input\_ecr\_repository) | aws sync ecr repository | `string` | `"device-insights-consumer"` | no |
| <a name="input_enable_lag_monitoring"></a> [enable\_lag\_monitoring](#input\_enable\_lag\_monitoring) | enable lag monitoring | `bool` | `false` | no |
| <a name="input_enable_scheduled_scaling"></a> [enable\_scheduled\_scaling](#input\_enable\_scheduled\_scaling) | enable scheduled scaling | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | environment type | `string` | `"dev"` | no |
| <a name="input_events_consumer_asg_desired_size"></a> [events\_consumer\_asg\_desired\_size](#input\_events\_consumer\_asg\_desired\_size) | number of instances to provision for events consumer | `number` | `2` | no |
| <a name="input_events_consumer_asg_max_size"></a> [events\_consumer\_asg\_max\_size](#input\_events\_consumer\_asg\_max\_size) | maximum number of instances to keep in asg for events consumer | `number` | `5` | no |
| <a name="input_events_consumer_asg_min_size"></a> [events\_consumer\_asg\_min\_size](#input\_events\_consumer\_asg\_min\_size) | minimum number of instances to keep in asg for events consumer | `number` | `2` | no |
| <a name="input_events_consumer_instance_type"></a> [events\_consumer\_instance\_type](#input\_events\_consumer\_instance\_type) | Instances type to provision in ASG for events consumer | `string` | `"t2.micro"` | no |
| <a name="input_events_consumer_kafka_topics"></a> [events\_consumer\_kafka\_topics](#input\_events\_consumer\_kafka\_topics) | kafka topics for events consumer | `list(string)` | <pre>[<br>  "events_log"<br>]</pre> | no |
| <a name="input_events_consumer_scaling_schedules"></a> [events\_consumer\_scaling\_schedules](#input\_events\_consumer\_scaling\_schedules) | scaling schedules for events consumer | <pre>list(object({<br>    cron_expression  = string<br>    min_size         = number<br>    max_size         = number<br>    desired_capacity = number<br>  }))</pre> | <pre>[<br>  {<br>    "cron_expression": "0 8 * * MON-SUN",<br>    "desired_capacity": 5,<br>    "max_size": 10,<br>    "min_size": 5<br>  },<br>  {<br>    "cron_expression": "0 21 * * MON-SUN",<br>    "desired_capacity": 2,<br>    "max_size": 10,<br>    "min_size": 2<br>  }<br>]</pre> | no |
| <a name="input_internal_security_groups"></a> [internal\_security\_groups](#input\_internal\_security\_groups) | list of internal access security group ids | `list(string)` | `[]` | no |
| <a name="input_kafka_broker_hosts"></a> [kafka\_broker\_hosts](#input\_kafka\_broker\_hosts) | kafka broker hosts | `list(string)` | `[]` | no |
| <a name="input_kafka_host_identifier"></a> [kafka\_host\_identifier](#input\_kafka\_host\_identifier) | kafka host identifier | `string` | `null` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | ssh access key name | `string` | n/a | yes |
| <a name="input_lag_threshold"></a> [lag\_threshold](#input\_lag\_threshold) | lag threshold for kafka topics | `number` | `100` | no |
| <a name="input_log_metric_filters"></a> [log\_metric\_filters](#input\_log\_metric\_filters) | list of log metric filters | <pre>list(object({<br>    name           = string<br>    filter_pattern = string<br>  }))</pre> | <pre>[<br>  {<br>    "filter_pattern": "ERROR",<br>    "name": "log_errors"<br>  }<br>]</pre> | no |
| <a name="input_logs_retention_period"></a> [logs\_retention\_period](#input\_logs\_retention\_period) | No of days to retain the logs | `number` | `7` | no |
| <a name="input_mapped_port"></a> [mapped\_port](#input\_mapped\_port) | mapped port to expose the application | `number` | `8000` | no |
| <a name="input_mongo_connect_timeout_ms"></a> [mongo\_connect\_timeout\_ms](#input\_mongo\_connect\_timeout\_ms) | mongo connect timeout | `number` | `30000` | no |
| <a name="input_mongo_db"></a> [mongo\_db](#input\_mongo\_db) | mongo database | `string` | `null` | no |
| <a name="input_mongo_enabled_sources"></a> [mongo\_enabled\_sources](#input\_mongo\_enabled\_sources) | mongo enabled sources | `list(string)` | <pre>[<br>  "*"<br>]</pre> | no |
| <a name="input_mongo_host"></a> [mongo\_host](#input\_mongo\_host) | mongo host | `string` | `null` | no |
| <a name="input_mongo_max_pool_size"></a> [mongo\_max\_pool\_size](#input\_mongo\_max\_pool\_size) | mongo max pool size | `number` | `40` | no |
| <a name="input_mongo_min_pool_size"></a> [mongo\_min\_pool\_size](#input\_mongo\_min\_pool\_size) | mongo min pool size | `number` | `2` | no |
| <a name="input_mongo_password"></a> [mongo\_password](#input\_mongo\_password) | mongo password | `string` | `null` | no |
| <a name="input_mongo_port"></a> [mongo\_port](#input\_mongo\_port) | mongo port | `string` | `27017` | no |
| <a name="input_mongo_retry_writes"></a> [mongo\_retry\_writes](#input\_mongo\_retry\_writes) | mongo retry writes | `bool` | `true` | no |
| <a name="input_mongo_server_selection_timeout_ms"></a> [mongo\_server\_selection\_timeout\_ms](#input\_mongo\_server\_selection\_timeout\_ms) | mongo server selection timeout | `number` | `30000` | no |
| <a name="input_mongo_socket_timeout_ms"></a> [mongo\_socket\_timeout\_ms](#input\_mongo\_socket\_timeout\_ms) | mongo socket timeout | `number` | `30000` | no |
| <a name="input_mongo_username"></a> [mongo\_username](#input\_mongo\_username) | mongo username | `string` | `null` | no |
| <a name="input_mongo_wait_queue_timeout_ms"></a> [mongo\_wait\_queue\_timeout\_ms](#input\_mongo\_wait\_queue\_timeout\_ms) | mongo wait queue timeout | `number` | `5000` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | organization name | `string` | `"credeau"` | no |
| <a name="input_postgres_db"></a> [postgres\_db](#input\_postgres\_db) | postgres main database | `string` | `null` | no |
| <a name="input_postgres_host"></a> [postgres\_host](#input\_postgres\_host) | postgres host | `string` | `null` | no |
| <a name="input_postgres_password"></a> [postgres\_password](#input\_postgres\_password) | postgres user password | `string` | `null` | no |
| <a name="input_postgres_port"></a> [postgres\_port](#input\_postgres\_port) | postgres port | `number` | `5432` | no |
| <a name="input_postgres_user_name"></a> [postgres\_user\_name](#input\_postgres\_user\_name) | postgres user name | `string` | `null` | no |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | list of private subnet ids to use | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | aws region to use | `string` | `"ap-south-1"` | no |
| <a name="input_root_volume_size"></a> [root\_volume\_size](#input\_root\_volume\_size) | size of root volume in GiB | `number` | `20` | no |
| <a name="input_scaling_cpu_threshold"></a> [scaling\_cpu\_threshold](#input\_scaling\_cpu\_threshold) | CPU utilization % threshold for scaling & alerting | `number` | `65` | no |
| <a name="input_scaling_disk_threshold"></a> [scaling\_disk\_threshold](#input\_scaling\_disk\_threshold) | Disk utilization % threshold for scaling & alerting | `number` | `80` | no |
| <a name="input_scaling_memory_threshold"></a> [scaling\_memory\_threshold](#input\_scaling\_memory\_threshold) | Memory utilization % threshold for scaling & alerting | `number` | `60` | no |
| <a name="input_sms_consumer_asg_desired_size"></a> [sms\_consumer\_asg\_desired\_size](#input\_sms\_consumer\_asg\_desired\_size) | number of instances to provision for sms consumer | `number` | `2` | no |
| <a name="input_sms_consumer_asg_max_size"></a> [sms\_consumer\_asg\_max\_size](#input\_sms\_consumer\_asg\_max\_size) | maximum number of instances to keep in asg for sms consumer | `number` | `5` | no |
| <a name="input_sms_consumer_asg_min_size"></a> [sms\_consumer\_asg\_min\_size](#input\_sms\_consumer\_asg\_min\_size) | minimum number of instances to keep in asg for sms consumer | `number` | `2` | no |
| <a name="input_sms_consumer_instance_type"></a> [sms\_consumer\_instance\_type](#input\_sms\_consumer\_instance\_type) | Instances type to provision in ASG for sms consumer | `string` | `"t2.micro"` | no |
| <a name="input_sms_consumer_kafka_topics"></a> [sms\_consumer\_kafka\_topics](#input\_sms\_consumer\_kafka\_topics) | kafka topics for sms consumer | `list(string)` | <pre>[<br>  "sms_batched"<br>]</pre> | no |
| <a name="input_sms_consumer_scaling_schedules"></a> [sms\_consumer\_scaling\_schedules](#input\_sms\_consumer\_scaling\_schedules) | scaling schedules for sms consumer | <pre>list(object({<br>    cron_expression  = string<br>    min_size         = number<br>    max_size         = number<br>    desired_capacity = number<br>  }))</pre> | <pre>[<br>  {<br>    "cron_expression": "0 8 * * MON-SUN",<br>    "desired_capacity": 5,<br>    "max_size": 10,<br>    "min_size": 5<br>  },<br>  {<br>    "cron_expression": "0 21 * * MON-SUN",<br>    "desired_capacity": 2,<br>    "max_size": 10,<br>    "min_size": 2<br>  }<br>]</pre> | no |
| <a name="input_stack_owner"></a> [stack\_owner](#input\_stack\_owner) | owner of the stack | `string` | `"tech@credeau.com"` | no |
| <a name="input_stack_team"></a> [stack\_team](#input\_stack\_team) | team of the stack | `string` | `"devops"` | no |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | timezone to use for scheduled scaling | `string` | `"Asia/Kolkata"` | no |
| <a name="input_upscale_evaluation_period"></a> [upscale\_evaluation\_period](#input\_upscale\_evaluation\_period) | Number of seconds required to observe the system before triggering upscale | `number` | `60` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | vpc id | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->