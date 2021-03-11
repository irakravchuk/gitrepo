module "ira" {
	source  = "183707352e02.test-env.scalr.com/env-svrcnchebt61e30/ira/aws"
	version = "1.1.2"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
