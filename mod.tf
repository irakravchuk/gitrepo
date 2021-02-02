module "tftest" {
	source  = "cd707ffe1a09.test-env.scalr.com/env-svrcnchebt61e30/tftest/aws"
	version = "0.0.5"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
