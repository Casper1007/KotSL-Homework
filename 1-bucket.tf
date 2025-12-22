resource "aws_s3_bucket" "website" {
  bucket_prefix = "website-"
  force_destroy = true

  tags = {
    Name = "website"
  }
}

