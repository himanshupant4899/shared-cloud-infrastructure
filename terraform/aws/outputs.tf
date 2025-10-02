output "public_subnet" {
  description = "Details of the available public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet" {
  description = "Details of the available private subnet"
  value       = aws_subnet.private_subnet.id
}

output "default_security_group" {
  description = "Details of the default security group"
  value       = aws_security_group.default.id
}

output "terraform_s3_bucket" {
  description = "Outputs the s3 bucekt details for terraform"
  value       = aws_s3_bucket.terraform.id
}

output "environment" {
  description = "Current Environment being worked upon"
  value       = local.environment
}