resource "null_resource" "test" {
  
 provisioner "local-exec" {
    command = "sleep 30"
 }
}

variable "test_var" {
  type = string
  default = ""
  }
