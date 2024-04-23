data "tfe_outputs" "vpc" {
  config = {
    organization = "ruslan8425"
    workspaces = {
      name = "vpc-prod"
    }
  }
}

output all {
    value = data.tfe_outputs.vpc.outputs
}