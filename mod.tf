module "ik-master" {
	source  = "scalr-iacp.scalr.io/org-sfuari395m7sck1/ik-master/yandex"
	version = "0.0.2"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
