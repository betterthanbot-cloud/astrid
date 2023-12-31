# stage/instance/terragrunt.hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_parent_terragrunt_dir()}/..//terraform/products/02-eks"
}

dependency "resource_group" {
  config_path = "../01-vpc"
}
inputs = {}
