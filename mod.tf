module "iktest" {
	source  = "1de576eea2b2.test-env.scalr.com/env-svrcnchebt61e30/iktest/mod"
	version = "1.0.3"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
