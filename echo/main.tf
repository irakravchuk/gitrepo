resource "null_resource" "test" {
 provisioner "local-exec" {
    command = "echo ${var.test_var}"
 }
}

variable "test_var" {
  type = string
  default = ""
  }
