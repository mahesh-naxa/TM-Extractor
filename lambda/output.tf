output "arn" {
  value = aws_lambda_function.lambda_raw_data.name
}

output "log_group" {
  value = aws_cloudwatch_log_group.lambda_raw_data_cron.name
}