resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "sleep 360"
 }
}

variable "test_var" {
  type = string
  default = ""
  }
