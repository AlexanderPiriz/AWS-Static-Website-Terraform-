variable "domain_name" {
  description = "Custom domain name. Leave unset to use the free cloudfront.net address."
  type        = string
  default     = null
}

variable "certificate_arn" {
  description = "ACM certificate ARN for HTTPS on a custom domain. Leave unset for the default."
  type        = string
  default     = null
}

variable "s3_bucket_regional_domain_name" {
  description = "The regional domain name of the S3 bucket"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket, used to name the access control."
  type        = string
}

variable "bucket_arn" {
  description = "ARN of the S3 bucket, used in the bucket policy."
  type        = string
}