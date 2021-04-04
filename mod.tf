module "ekssubm" {
	source  = "4703a5d983cb.test-env.scalr.com/env-svrcnchebt61e30/ekssubm/aws"
	version = "0.0.6"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
