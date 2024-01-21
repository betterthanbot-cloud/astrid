# stage/instance/terragrunt.hcl
include {
  path = find_in_parent_folders()
}
terraform {
  source = "${get_parent_terragrunt_dir()}/..//terraform/products/02-eks"
}

dependency "vpc" {
  config_path = "../01-vpc"
}

inputs = {
  //   cluster_name           = "library"
  name            = "Astrid-Infra"
  vpc_id          = dependency.vpc.outputs.vpc_id
  private_subnets = dependency.vpc.outputs.private_subnets
  intra_subnets   = dependency.vpc.outputs.intra_subnets
  //   kubernetes_version     = "1.28"
  //   desired_size           = 2
  //   max_size               = 3
  //   min_size               = 2
  //   endpoint_public_access = true
}
