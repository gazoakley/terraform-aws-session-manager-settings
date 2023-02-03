variable "ssm_document_name" {
  type        = string
  default     = "SSM-SessionManagerRunShell"
  description = "The name for SSM Document"
}

variable "kms_key_id" {
  type        = string
  default     = null
  description = "The KMS key used to to encrypt SSM sessions."
}

variable "s3_bucket_name" {
  type        = string
  default     = ""
  description = "The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket."
}

variable "s3_key_prefix" {
  type        = string
  default     = ""
  description = "To write output to a sub-folder, enter a sub-folder name."
}

variable "s3_encryption_enabled" {
  type        = bool
  default     = true
  description = "Encrypt log data."
}

variable "cloudwatch_log_group_name" {
  type        = string
  default     = ""
  description = "The name of the log group to upload session logs to. Specifying this enables sending session output to CloudWatch Logs."
}

variable "cloudwatch_encryption_enabled" {
  type        = bool
  default     = true
  description = "Encrypt log data."
}

variable "cloudwatch_streaming_enabled" {
  type        = bool
  default     = true
  description = "Stream session log data to CloudWatch. Defaults to true. If false logs will be uploaded at the end of the session."
}

variable "idle_session_timeout" {
  type        = string
  default     = "20"
  description = "Time until a session is closed when left idle."
}

variable "max_session_duration" {
  type        = number
  default     = null
  description = "The longest a session can stay open before it will be closed."
}

variable "run_as_enabled" {
  type        = bool
  default     = false
  description = "Enables the option to start sessions using the credentials of a specified operating system user."
}

variable "linux_shell_profile" {
  type        = string
  default     = ""
  description = "A set of Linux commands to run when a Linux session is started."
}

variable "windows_shell_profile" {
  type        = string
  default     = ""
  description = "A set of Windows commands to run when a Windows session is started."
}
