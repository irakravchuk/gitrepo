module "ik-modules" {
	source  = "ee664d738ffb.test-env.scalr.com/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
