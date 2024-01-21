# stage/instance/terragrunt.hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_parent_terragrunt_dir()}/..//terraform/products/01-vpc"
}

inputs = {
  name = "Astrid-Infra"
}
