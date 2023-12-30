terraform {
  required_version = ">=1.5.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"
}

## Tags
locals {
  tags = merge(
    var.base_tags,
    {
      Subproduct = "02-eks"
    }
  )
}

variable "base_tags" {
  description = "base tags to apply"
  type = object({
    Environment   = string
    Owner         = string
    Product       = string
    Created-By    = string
    Source        = string
    # Subproduct    = string
  })
}