# provider block

terraform {
  backend "s3" {
    bucket         = "jude-terraform-state"
    key            = "wed/wed.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}