resource "aws_route53_zone" "main" {
  name    = var.domainName
  comment = "Managed by Terraform"

}

resource "aws_route53_record" "exampleDomain-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domainName
  type    = "A"
  alias {
    zone_id                = aws_s3_bucket.elsevier.hosted_zone_id
    name                   = aws_s3_bucket.elsevier.website_endpoint
    evaluate_target_health = true
  }
}


