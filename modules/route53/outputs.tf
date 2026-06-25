output "hosted_zone_id" {
    description = "The ID of the Route53 hosted zone"
    value       = aws_route53_zone.primary.id
}

output "name_servers" {
    description = "The name servers for the hosted zone"
    value        = aws_route53_zone.primary.name_servers
}

