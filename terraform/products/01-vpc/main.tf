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
  region = local.region
}

data "aws_caller_identity" "current" {}
data "aws_availability_zones" "available" {}

locals {
  name   = "${var.name}-${replace(basename(path.cwd), "_", "-")}"
  region = "ap-southeast-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

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

output "datetime" {
  value = local.datetime_sgt
}
