terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "app" {
  bucket = var.bucket_name

  tags = {
    Project   = "terraform-task-18"
    ManagedBy = "Terraform"
  }
}