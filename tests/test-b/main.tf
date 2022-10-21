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

module "test_b" {
  source = "./tmp"
  bucket_name = "Bucket-B"
}
