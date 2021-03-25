module "tftest" {
	source  = "irak.org5.te.scalr-labs.net/env-tcv9m0fhhns4s7o/tftest/aws"
	version = "0.0.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
