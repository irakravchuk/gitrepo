module "tftest" {
	source  = "mainiacp.ha-test.scalr.net/env-svrcnchebt61e30/tftest/aws"
	version = "0.0.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
