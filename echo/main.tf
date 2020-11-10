resource "null_resource" "test" {
 count = 11
 provisioner "local-exec" {
    command = "echo ${var.test_var}"
 }
}

variable "test_var" {
  type = string
  default = ""
  }
