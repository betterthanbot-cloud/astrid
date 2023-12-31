terraform {
  required_version = ">=1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

## Tags
locals {
  datetime_utc = timestamp()
  datetime_sgt = timeadd(local.datetime_utc, "8h")

  tags = merge(
    var.base_tags,
    {
      Subproduct = "02-eks"
      Created-At = local.datetime_sgt
  })

}

variable "base_tags" {
  description = "base tags to apply"
  type = object({
    Environment = string
    Owner       = string
    Product     = string
    Created-By  = string
    Source      = string
    Subproduct  = string
  })
}

variable "vpc_subnet_ids" {
  description = "vpc subnet ids"
  type        = list(string)
}

variable "k8_version" {
  description = "k8_version"
  type        = string
}

output "datetime" {
  value = local.datetime_sgt
}
