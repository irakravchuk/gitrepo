module "ira" {
	source  = "e37cc5ec6494.test-env.scalr.com/env-svrcnchebt61e30/ira/aws"
	version = "1.1.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
