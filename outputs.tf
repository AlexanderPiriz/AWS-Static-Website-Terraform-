output "hosted_zone_id" {
  value = module.route53.hosted_zone_id
}

output "certificate_arn" {
  value = module.acm.certificate_arn
}

output "name_servers" {
  value = module.route53.name_servers
}


