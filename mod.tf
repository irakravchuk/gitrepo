module "iktest" {
	source  = "7bfa0a2165ae.test-env.scalr.com/global/iktest/mod"
	version = "1.0.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
