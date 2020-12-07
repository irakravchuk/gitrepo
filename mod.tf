module "ik-modules" {
	source  = "bf6b602c226d.test-env.scalr.com/env-svrcnchebt61e30/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
