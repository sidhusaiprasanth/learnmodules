terraform {
  required_version = "~> 1.5.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "sidhuterraformstate"
    key     = "samplepractice/production/terraform.tfstate"
    region  = "ap-south-1"
    profile = "prasanth"
  }
}



provider "aws" {
  region  = "ap-south-1"
  profile = "prasanth"
}




