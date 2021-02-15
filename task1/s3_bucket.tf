resource "aws_s3_bucket" "bbbbzs" {
  bucket = "my-bucket-seko-230"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}