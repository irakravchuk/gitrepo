resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "sleep 3"
 }
}

variable "test_var" {
  type = string
  default = "456"
  }
variable "ira" {
  type = string
  default = ""
  }
