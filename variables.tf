variable "s3_bucket_name" {
  default     = ""
  description = "(Optional) The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket."
}

variable "s3_key_prefix" {
  default     = ""
  description = "(Optional) To write output to a sub-folder, enter a sub-folder name."
}

variable "s3_encryption_enabled" {
  default     = true
  description = "(Optional) Encrypt log data."
}

variable "cloudwatch_log_group_name" {
  default     = ""
  description = "(Optional) The name of the log group to upload session logs to. Specifying this enables sending session output to CloudWatch Logs."
}

variable "cloudwatch_encryption_enabled" {
  default     = true
  description = "(Optional) Encrypt log data."
}

