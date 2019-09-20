output "document_name" {
  description = "Name of the created document."
  value       = aws_ssm_document.session_manager_prefs.name
}

output "document_arn" {
  description = "ARN of the created document. You can use this to create IAM policies that prevent changes to session manager preferences."
  value       = aws_ssm_document.session_manager_prefs.arn
}

