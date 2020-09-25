variable "topic_arn" {
  description = " The ARN of the SNS topic to subscribe to"
  type        = string
}

variable "email_address" {
  description = "The email address to send data to"
  type        = string
}

variable "return_subscription_arn" {
  description = "Sets whether the response from the Subscribe request includes the subscription ARN, even if the subscription is not yet confirmed."
  type        = bool
  default     = false
}

variable "install_aws_cli" {
  default     = false
  description = "Installs the AWS CLI module-local. AWS CLI is required to run this module."
  type        = bool
}

