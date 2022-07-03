resource "aws_ssm_document" "session_manager_prefs" {
  name            = "SSM-SessionManagerRunShell"
  document_type   = "Session"
  document_format = "JSON"

  content = jsonencode({
    schemaVersion = "1.0"
    description   = "Document to hold regional settings for Session Manager"
    sessionType   = "Standard_Stream"
    inputs = {
      kmsKeyId                    = var.kms_key_id
      s3BucketName                = var.s3_bucket_name
      s3KeyPrefix                 = var.s3_key_prefix
      s3EncryptionEnabled         = var.s3_encryption_enabled
      cloudWatchLogGroupName      = var.cloudwatch_log_group_name
      cloudWatchEncryptionEnabled = var.cloudwatch_encryption_enabled
      cloudWatchStreamingEnabled  = var.cloudwatch_streaming_enabled
      idleSessionTimeout          = var.idle_session_timeout
      maxSessionDuration          = var.max_session_duration
      runAsEnabled                = var.run_as_enabled
      shellProfile = {
        linux   = var.linux_shell_profile
        windows = var.windows_shell_profile
      }
    }
  })
}
