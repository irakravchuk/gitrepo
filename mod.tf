module "ik-modules" {
	source  = "mainiacp.ha-test.scalr.net/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
