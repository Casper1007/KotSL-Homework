resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.website.bucket
  key          = "index.html"
  source       = "${path.module}/lab-example/index.html"
  content_type = "text/html"

}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.website.bucket
  key          = "error.html"
  source       = "${path.module}/lab-example/error.html"
  content_type = "text/html"

}
