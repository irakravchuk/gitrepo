resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "cat /etc/hosts"
    
    
  }
}
