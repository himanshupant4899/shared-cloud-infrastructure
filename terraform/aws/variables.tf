variable "aws_region" {
    description = "AWS region to create resources in"
    type = string
    default = "ap-south-2"
}

variable "environment" {
    description = "AWS environment to create resources in"
    type = string
}


variable "remote_state_bucket_name" {
    description = "Name of S3 bucket to store state file"
    type = string
}
