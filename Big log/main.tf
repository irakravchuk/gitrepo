terraform {
  backend "remote" {
    hostname = "e95e3aa4fc9c.test-env.scalr.com"
    organization = "env-svrcnchebt61e30"
    token="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdDhrcnE3ajliczJjam1nIn0.M_Z1nK65wsBT1HGJ8nW-FmhokGRBI0FPElJzyLRh0YY"
    workspaces {
      name = "listoffiles"
    }
  }
}
resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = <<EOT
      ls -R /
    EOT
  }
}
