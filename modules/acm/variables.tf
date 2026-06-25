variable "domain_name" {
  description = "The root domain name for this certificate."
  type        = string
}

variable "hosted_zone_id" {
    description = "Route53 gisted zone ID for DBS validation"
    type       = string
    
}
