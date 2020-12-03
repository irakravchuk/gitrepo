module "ik-modules" {
	source  = "account0.org0.te.scalr-labs.net/env-t7b7hkqifnvglo8/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
