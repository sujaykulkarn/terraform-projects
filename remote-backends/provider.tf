terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.61.0"
    }
  }
  backend "s3" {
    bucket = "statebackend0309"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
}