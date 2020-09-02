variable "bucket_name" {
  type = string
  description = "The name of the bucket to poll for logs"
}
variable "description" {
  type = string
  description = "Description for the polling source"
}

variable "category" {
  type = string
  description = "The category this source logs to."
  default = ""
}

variable "scan_interval" {
  type = number
  description = "Time interval in milliseconds of scans for new data. The default is 300000 and the minimum value is 1000 milliseconds."
  default = 300000
}

variable "collector_id" {
  type = string
  description = "The ID of the SumoLogic collector"
}

variable "paused" {
  type = bool
  description = "When set to true, the scanner is paused. To enable the scanner, set to false. Defaults to true"
  default = true
}

variable "aws_role_arn" {
  type = string
  description = "The ARN for the SumoLogic IAM Role"
}

variable "path_limit_to_regions" {
  type = list(string)
  description = "List of Amazon regions to limit metric collection. This is a valid parameter if using type CloudWatchPath. Defaults to empty"
  default = []
}

variable "path_limit_to_namespaces" {
  type = list(string)
  description = "List of namespaces to limit metrics collection. By default all namespaces are selected. Details can be found here. You can also specify custom namespace. This is a valid parameter if using type CloudWatchPath. Defaults to empty"
  default = []
}

variable "path_expression" {
  type = string
  description = "Regex expression for the paths to poll in the bucket"
  default = "*"
}
