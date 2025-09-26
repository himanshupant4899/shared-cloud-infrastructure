resource "aws_s3_bucket" "terraform" {
  bucket = var.remote_state_bucket_name
  region = var.aws_region
  object_lock_enabled = true
  tags = {
    Name        = var.remote_state_bucket_name
    Environment = var.environment
    Usage   = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform.id
  versioning_configuration {
    status = "Enabled"
  }
}
