variable "kms_key_id" {
  default     = null
  description = "(Optional) The KMS key used to to encrypt SSM sessions"
}

variable "s3_bucket_name" {
  default     = ""
  description = "(Optional) The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket."
}

variable "s3_key_prefix" {
  default     = ""
  description = "(Optional) To write output to a sub-folder, enter a sub-folder name."
}

variable "s3_encryption_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Encrypt log data."
}

variable "cloudwatch_log_group_name" {
  default     = ""
  description = "(Optional) The name of the log group to upload session logs to. Specifying this enables sending session output to CloudWatch Logs."
}

variable "cloudwatch_encryption_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Encrypt log data."
}

variable "cloudwatch_streaming_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Stream session log data to CloudWatch. Defaults to true. If false logs will be uploaded at the end of the session."
}
