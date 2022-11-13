output "bucket_arn" {
  value = aws_s3_bucket.elsevier.arn
}
output "bucket_id" {
  value = aws_s3_bucket.elsevier.id
}
output "bucket_name" {
  value = aws_s3_bucket.elsevier.bucket
}

output "object_name" {
  value = aws_s3_object.elsevier-index.key
}

output "bucket_domain_name" {
  value = aws_s3_bucket.elsevier.bucket_domain_name
}