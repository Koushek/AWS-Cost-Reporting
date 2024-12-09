terraform {
  # Backend configuration for storing Terraform state in an S3 bucket
  backend "s3" {
    bucket         = "my-billing-list"  # Replace with your bucket name
    region         = "us-east-1"
    key            = "Non-Modularized/AWS-Cost-Reporting/terraform.tfstate"
    encrypt        = false
  }

  # Required Terraform version
  required_version = ">= 0.13.0"

  # Required provider configuration
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}
