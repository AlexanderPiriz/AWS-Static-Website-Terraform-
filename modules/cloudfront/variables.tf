 variable "domain_name" {
  description = "The domain name for the CloudFront distribution"
  type        = string
}

variable "certificate_arn" {
  description = "The ACM certificate ARN for HTTPS"
  type        = string
}

variable "s3_bucket_regional_domain_name" {
  description = "The regional domain name of the S3 bucket"
  type        = string
}
