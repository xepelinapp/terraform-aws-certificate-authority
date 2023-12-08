resource "aws_s3_bucket_ownership_controls" "crl" {
  bucket = aws_s3_bucket.crl.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }

  depends_on = [aws_s3_bucket_public_access_block.crl]
}
