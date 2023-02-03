# terraform-aws-session-manager-settings

This module creates an SSM document that stores preferences for AWS Systems Manager Session Manager.

Session preferences let you specify a location to store log output for all sessions in your account. You can also enable server-side encryption using an AWS Key Management Service (KMS) key for a specified stream to ensure your session records are transferred securely.

Requires `aws` provider >= 1.36.0

## Example Usage

```hcl
module "session-manager-settings" {
  source  = "gazoakley/session-manager-settings/aws"

  s3_bucket_name            = "my-session-logs-bucket"
  cloudwatch_log_group_name = "/ssm/session-logs"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 1.36.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 1.36.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudwatch\_encryption\_enabled | Encrypt log data. | `bool` | `true` | no |
| cloudwatch\_log\_group\_name | The name of the log group to upload session logs to. Specifying this enables sending session output to CloudWatch Logs. | `string` | `""` | no |
| cloudwatch\_streaming\_enabled | Stream session log data to CloudWatch. Defaults to true. If false logs will be uploaded at the end of the session. | `bool` | `true` | no |
| idle\_session\_timeout | Time until a session is closed when left idle. | `string` | `"20"` | no |
| kms\_key\_id | The KMS key used to to encrypt SSM sessions. | `string` | `null` | no |
| linux\_shell\_profile | A set of Linux commands to run when a Linux session is started. | `string` | `""` | no |
| max\_session\_duration | The longest a session can stay open before it will be closed. | `number` | `null` | no |
| run\_as\_enabled | Enables the option to start sessions using the credentials of a specified operating system user. | `bool` | `false` | no |
| s3\_bucket\_name | The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket. | `string` | `""` | no |
| s3\_encryption\_enabled | Encrypt log data. | `bool` | `true` | no |
| s3\_key\_prefix | To write output to a sub-folder, enter a sub-folder name. | `string` | `""` | no |
| windows\_shell\_profile | A set of Windows commands to run when a Windows session is started. | `string` | `""` | no |
| ssm\_document\_name | The name of SSM Document that will be created on AWS Account. | `string` | `"SSM-SessionManagerRunShell"` | no |

## Outputs

| Name | Description |
|------|-------------|
| document\_arn | ARN of the created document. You can use this to create IAM policies that prevent changes to Session Manager preferences. |
| document\_name | Name of the created document. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.
