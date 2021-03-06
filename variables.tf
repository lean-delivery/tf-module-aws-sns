variable "project" {
  description = "Project name will be used for naming resources in pattern %PROJECT_NAME%-%ENVIRONMENT_NAME%"
  default     = "project"
}

variable "environment" {
  description = "Environment name will be used for naming resources in pattern %PROJECT_NAME%-%ENVIRONMENT_NAME%"
  default     = "test"
}

variable "tags" {
  description = "A mapping of tags to assign to the queue."
  type        = "map"
  default     = {}
}

variable "name" {
  description = "The friendly name for the SNS topic. By default generated by Terraform."
  type        = "string"
  default     = ""
}

variable "display_name" {
  description = "The display name for the SNS topic"
  type        = "string"
  default     = ""
}

variable "policy" {
  description = "The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform see the AWS IAM Policy Document Guide."
  type        = "string"
  default     = ""
}

variable "delivery_policy" {
  description = "The SNS delivery policy. More on AWS documentation"
  type        = "string"
  default     = ""
}

variable "application_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = "string"
  default     = ""
}

variable "application_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  type        = "string"
  default     = ""
}

variable "application_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = "string"
  default     = ""
}

variable "http_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = "string"
  default     = ""
}

variable "http_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  default     = 100
}

variable "http_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = "string"
  default     = ""
}

variable "kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key for Amazon SNS or a custom CMK. For more information see Key Terms"
  type        = "string"
  default     = ""
}

variable "lambda_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = "string"
  default     = ""
}

variable "lambda_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  default     = 100
}

variable "lambda_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = "string"
  default     = ""
}

variable "sqs_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = "string"
  default     = ""
}

variable "sqs_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  default     = 100
}

variable "sqs_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = "string"
  default     = ""
}

variable "topic_subscription" {
  type = "map"

  default = {
    protocol = ""
    endpoint = ""
  }
}

variable "endpoint_auto_confirms" {
  description = "Indicating whether the end point is capable of auto confirming subscription e.g. PagerDuty"
  type        = "string"
  default     = "false"
}

variable "confirmation_timeout_in_minutes" {
  description = "Indicating number of minutes to wait in retying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols."
  default     = 1
}

variable "raw_message_delivery" {
  description = "Indicating whether or not to enable raw message delivery the original message is directly passed not wrapped in JSON with the original message in the message property."
  type        = "string"
  default     = "false"
}
