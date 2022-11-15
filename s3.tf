resource "aws_s3_bucket" "elsevier" {
  bucket = var.bucketName
}

resource "aws_s3_bucket_website_configuration" "elsevier-config" {
  bucket = aws_s3_bucket.elsevier.bucket

  index_document {
    suffix = var.index_document
  }
  routing_rule {

    redirect {
      replace_key_prefix_with = var.bucketName
    }
  }
}

resource "aws_s3_bucket_policy" "elsevier-policy" {
  bucket = aws_s3_bucket.elsevier.id
  policy = templatefile("s3-policy.json", { bucket = var.bucketName })
}

resource "aws_s3_object" "elsevier-index" {
  bucket       = aws_s3_bucket.elsevier.id
  key          = "index1.html"
  source       = "../static-host-s3-bucket/index1.html"
  content_type = "text/html"
  acl          = "public-read"
}





