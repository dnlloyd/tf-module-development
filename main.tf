
data "aws_s3_bucket" "selected" {
  bucket = "tf-remote-state-fh-sand"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = "test"
  acl    = "private"
}
