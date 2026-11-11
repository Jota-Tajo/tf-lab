variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "environment must be dev or prod."
  }
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for the bucket name"
  type        = string
  default     = "jthod-tf-session03"
}

variable "tags" {
  description = "Extra tags for the bucket"
  type        = map(string)
  default     = {}
}