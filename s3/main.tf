provider "aws" {}

resource "aws_s3_bucket" "bunny-s3-bucket" {
  bucket = var.bucket_name

  website {
    index_document = "index.html"
    error_document = "error.html"

   
  }
}

resource "aws_s3_bucket_cors_configuration" "bunny-cors" {
  bucket = aws_s3_bucket.bunny-s3-bucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }


}

resource "aws_s3_bucket_acl" "bunny-bucket-acl" {
  bucket = aws_s3_bucket.bunny-s3-bucket.id
  acl    = "public-read"
}


resource "aws_s3_bucket_object" "bunny-s3-fil" {
  key                    = "index.html"
  bucket                 = aws_s3_bucket.bunny-s3-bucket.id
  source                 = "index.html"
  acl = "public-read"

  content_type = "text/html"
}