module "tftest" {
	source  = "2930a3dc30cf.test-env.scalr.com/env-svrcnchebt61e30/tftest/aws"
	version = "0.0.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
