# stage/instance/terragrunt.hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_parent_terragrunt_dir()}/..//terraform/products/02-eks"
}

/*dependency "vpc" {
  config_path = "../01-vpc"
}*/
inputs = {
  vpc_subnet_ids = ["subnet-028611b2b5a38fa0a", "subnet-06607ad1e760e79ac"]
  k8_version     = "1.28"
}
