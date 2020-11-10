provider "null" {}
resource "null_resource" "test" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 3600
    EOT
  }
  triggers = {
    always_run = timestamp()
  }
}
