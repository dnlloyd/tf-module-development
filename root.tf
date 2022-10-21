data "aws_s3_bucket" "selected" {
  bucket = "tf-remote-state-fh-sand"
}

# variable "bucket_name" {}

resource "aws_s3_bucket" "bucket" {
  # bucket_prefix = var.bucket_name
  bucket_prefix = "testies"
}
