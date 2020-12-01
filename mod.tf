module "ik-modules" {
	source  = "f1692237f2a4.test-env.scalr.com/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
