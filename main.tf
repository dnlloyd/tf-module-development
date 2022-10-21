data "aws_s3_bucket" "selected" {
  bucket = "tf-remote-state-fh-sand"
}

variable "bucket_name" {}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}
