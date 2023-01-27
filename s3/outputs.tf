output "s3_bucket_id" {
  value = aws_s3_bucket.bunny-s3-bucket.id
}
output "s3_bucket_region" {
  value = aws_s3_bucket.bunny-s3-bucket.region
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.bunny-s3-bucket.arn
}


output "s3_bucket_website_endpoint" {
  value = aws_s3_bucket.bunny-s3-bucket.website_endpoint
}