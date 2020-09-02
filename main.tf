resource "sumologic_polling_source" "polling_source" {
  name = "${var.bucket_name} Polling Source"
  description = "${var.bucket_name} S3 Bucket Polling Source"
  category = var.category
  content_type = "AwsS3AuditBucket"
  scan_interval = var.scan_interval
  paused = var.paused
  collector_id = var.collector_id

  authentication {
    type = "AWSRoleBasedAuthentication"
    role_arn = var.aws_role_arn
  }

  path {
    type = "S3BucketPathExpression"
    bucket_name = var.bucket_name
    path_expression = var.path_expression
    limit_to_regions = var.path_limit_to_regions
    limit_to_namespaces = var.path_limit_to_namespaces
  }
}
