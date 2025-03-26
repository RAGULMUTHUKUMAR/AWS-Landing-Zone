resource "aws_cloudwatch_log_group" "log_group" {
  name = "/aws/landing-zone/logs"
}

resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = "security-logs"
  log_group_name = aws_cloudwatch_log_group.log_group.name
}
