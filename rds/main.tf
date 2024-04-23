data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "ruslan8425"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.terraform_remote_state.vpc.outputs
}