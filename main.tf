

#resource "null_resource" "example" {
  #provisioner "local-exec" {
    #command = "dmesg"
  #}
#}

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
  command = "dd if=/dev/zero of=file.txt count=2048 bs=1048576"
  }
}
