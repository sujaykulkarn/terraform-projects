terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.61.0"
    }
  }
  backend "s3" {
    bucket = "xyz"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  
}