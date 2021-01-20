module "ik-master" {
	source  = "org4.te.scalr-labs.net/global/ik-master/yandex"
	version = "0.0.2"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
