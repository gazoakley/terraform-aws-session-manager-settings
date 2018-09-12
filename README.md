# terraform-aws-session-manager-settings

Session preferences let you specify a location to store log output for all sessions in your account. You can also enable server-side encryption using an AWS Key Management Service (KMS) key for a specified stream to ensure your session records are transferred securely.

Requires `aws` provider >= 1.36.0

## Argument Reference

The following arguments are supported:

* `s3_bucket_name` - (Optional) The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket.
* `s3_key_prefix` - (Optional) To write output to a sub-folder, enter a sub-folder name.
* `s3_encryption_enabled` - (Optional) Encrypt log data.
* `cloudwatch_log_group_name` - (Optional) The name of the log group to upload session logs to. Specifying this enables sending session output to CloudWatch Logs.
* `cloudwatch_encryption_enabled` - (Optional) Encrypt log data.

## Attributes Reference

No extra attributes are exported.