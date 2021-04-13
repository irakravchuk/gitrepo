module "ik-modules" {
	source  = "3a2bca74a46d.test-env.scalr.com/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.4.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
