
resource "null_resource" "example" {
  provisioner "local-exec" {
    #command = "cat /etc/hosts"
    command = "sleep 1"
  }
}
