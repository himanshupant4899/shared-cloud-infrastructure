# terraform {
#   backend "s3" {
#     key    = "shared-terraform.tfstate"
#     region = "ap-south-2"
# }
# }

terraform {
  backend "local" {
  }
}