# stage/instance/terragrunt.hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_parent_terragrunt_dir()}/..//terraform/products/02-eks"
}

inputs = {
  cluster_name           = "library"
  vpc_subnet_ids         = ["subnet-028611b2b5a38fa0a", "subnet-06607ad1e760e79ac"]
  kubernetes_version     = "1.28"
  desired_size           = 1
  max_size               = 2
  min_size               = 0
  endpoint_public_access = true
}
