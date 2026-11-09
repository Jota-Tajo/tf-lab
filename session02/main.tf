provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "tf-lab"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}

locals {
  bucket_name = "${var.bucket_prefix}-${var.environment}"
}

resource "aws_s3_bucket" "lab" {
  bucket = local.bucket_name
  tags   = var.tags
}