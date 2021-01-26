resource "null_resource" "test" {
 provisioner "local-exec" {
    command = "sleep 30000"
 }
}

variable "test_var" {
  type = string
  default = ""
  }
