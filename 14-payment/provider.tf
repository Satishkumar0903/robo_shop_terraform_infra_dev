terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "devops-practice-state"
    key    = "robo-shop-infra-payment"
    region = "us-east-1"
    dynamodb_table = "devops-practice-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}