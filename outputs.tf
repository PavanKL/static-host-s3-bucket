output "bucket_arn" {
  value = aws_s3_bucket.elsevier.arn
}
output "bucket_id" {
  value = aws_s3_bucket.elsevier.id
}
output "bucket_name" {
  value = aws_s3_bucket.elsevier.bucket
}

output "Route53"{
  value = aws_route53_zone.main.name
}

output "bucket_domain_name"{
  value = aws_s3_bucket.elsevier.bucket_domain_name
}






