resource "aws_s3_bucket" "bucket" {
  bucket = "cmtr-xpj56jfp-bucket-1780833896"

  tags = {
    Project = "cmtr-xpj56jfp"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_block" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}