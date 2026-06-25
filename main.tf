terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        
        }

    }
}

provider "aws" {
    region = "ap-southeast-2"

}

#-----------------------------
# Route53 Hosted Zone
#-----------------------------
module "route53" {
    source = "./modules/route53"
    domain_name = var.domain_name

}

#-----------------------------
# ACM Certificate (us-east-1)
#-----------------------------
module "acm" {
    source         = "./modules/acm"
    domain_name    = var.domain_name
    hosted_zone_id = module.route53.hosted_zone_id
}


