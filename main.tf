data "aws_s3_bucket" "selected" {
  bucket = "tf-remote-state-fh-sand"
}

variable "bucket_name" {}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
}
