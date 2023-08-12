terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "aws-astrid-infra"
    key                = "terraform-state-file/terraform.tfstate"
    region         	   = "ap-southeast-1"
    encrypt        	   = true
    dynamodb_table = "aws-astrid-infra-terraform-statefile-lock"
  }
}
