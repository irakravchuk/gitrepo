module "ik-modules" {
	source  = "25b06455b57c.test-env.scalr.com/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
