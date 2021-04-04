module "iktest" {
	source  = "4703a5d983cb.test-env.scalr.com/env-svrcnchebt61e30/iktest/mod"
	version = "1.0.3"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
