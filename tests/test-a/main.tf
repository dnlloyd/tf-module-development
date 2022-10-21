provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
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

module "test_a" {
  source = "//../../"
  # bucket_name = "Bucket-A"
}

# module "s3_bucket" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket = "my-s3-bucket"
#   acl    = "private"

#   versioning = {
#     enabled = true
#   }

# }