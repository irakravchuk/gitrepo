resource "null_resource" "test" {

 provisioner "local-exec" {
    command = "sleep 120"
 }
}

variable "test_var" {
  type = string
  default = ""
  }
