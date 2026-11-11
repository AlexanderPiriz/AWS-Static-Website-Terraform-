terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

#-----------------------------
# S3 Bucket for the website
#-----------------------------
module "s3_static_site" {
  source      = "./modules/s3-static-site"
  bucket_name = "alexbuildcloud-site"
}

#-----------------------------
# CloudFront (serves the site over HTTPS)
#-----------------------------
module "cloudfront" {
  source                         = "./modules/cloudfront"
  bucket_name                    = module.s3_static_site.bucket_name
  bucket_arn                     = module.s3_static_site.bucket_arn
  s3_bucket_regional_domain_name = module.s3_static_site.bucket_regional_domain_name
}