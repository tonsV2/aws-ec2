terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.25.0"
    }
  }

  backend "s3" {
    bucket = "terraform-ec2-test"
    key = "state.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.region
}
