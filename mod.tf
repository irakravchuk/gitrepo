module "tftest" {
	source  = "ddd03d260884.test-env.scalr.com/env-svrcnchebt61e30/tftest/aws"
	version = "0.1.3"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
