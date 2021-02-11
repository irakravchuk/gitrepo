module "ik-modules" {
	source  = "mainiacp.org8.te.scalr-labs.net/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.3.1"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
