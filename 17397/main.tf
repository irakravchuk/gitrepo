data "scalr_workspace" "source" {
   name = "test-ws"
   environment_id = "env-svrcnchebt61e30"
}

resource "scalr_workspace" "dest" {
  count = 12

  name = "test-ws-${count.index}"
  environment_id = "env-svrcnchebt61e30"

  terraform_version = data.scalr_workspace.source.terraform_version
  vcs_provider_id = data.scalr_workspace.source.vcs_provider_id
  vcs_repo {
      identifier  = data.scalr_workspace.source.vcs_repo[0].identifier
      branch      = "main"
  }
}
