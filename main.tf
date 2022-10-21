provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "fhc-dan"

    workspaces {
      name = "module-development"
    }
  }
}

data "aws_s3_bucket" "selected" {
  bucket = "tf-remote-state-fh-sand"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
}
