provider "aws" {
  region = var.region
  #profile = var.profile
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "aws-cluster-statefile-backup"
    key = "aws-cluster-statefile-backup/terraform.tfstate"
    region = "us-west-2"
  }
}