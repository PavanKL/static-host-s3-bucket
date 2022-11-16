resource "aws_route53_zone" "main" {
  name    = var.domainName
  comment = "Managed by Terraform"

}

resource "aws_route53_record" "exampleDomain-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domainName
  type    = "A"
  alias {
    name                   = aws_s3_bucket_website_configuration.elsevier-config.website_endpoint
    zone_id                = aws_s3_bucket.elsevier.hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "CNAME" {

  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domainName}"
  type    = "CNAME"
  ttl     = "10"
  records = [aws_s3_bucket_website_configuration.elsevier-config.website_endpoint]

}

