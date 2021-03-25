module "CE" {
	source  = "7bfa0a2165ae.test-env.scalr.com/env-svrcnchebt61e30/CE/mod"
	version = "1.0.2"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
