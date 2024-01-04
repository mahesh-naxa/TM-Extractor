# To be used by main.tf & managed through terragrunt.
# Check 

variable "aws_region" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
  type        = string
  default = "ap-south-1"
}

variable "iam_lambda_role_name" {
  description = "The name of the role lambda functions runs as"
  type        = string
}

variable "cw_retention_in_days" {
  description = "Defines number of days cloudwatch logs are retained. Example: 1 or 10 Years"
  type        = string
  default = "14"
}

variable "lambda_environment" {
  description = "The Environment lambda functions are deploymed on. Changes the prefix and names of resources. eg: dev, stag, prod"
  type        = number
  default = "dev"
}

variable "lambda_memory_size" {
  description = "Defines the memory size the lambda functions runs on. Default 128 MB"
  type        = string
  default = "128"
}

variable "lambda_timeout" {
  description = "Defines the timeout for the lambda function. Increase if lambda function times out. Default 20 sec."
  type        = string
  default = "20"
}

variable "lambda_cron_expression" {
  description = "Defines the Cron expression for the lambda function to run. Defaults to everyday at 00:00 am"
  type        = string
  default = "cron(0 0 * * ? *)"
}


