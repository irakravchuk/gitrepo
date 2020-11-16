
resource "null_resource" "example" {
  provisioner "local-exec" {
    #command = "cat /etc/hosts"
    command = "sleep 360"
  }
}

properties = {
  "user-id": "%scalr-user-happy-id%",
  "email": "%user-email%",
  "account-id": "%scalr-account-happy-id%",
  "account-name": "%account-name%"
}
