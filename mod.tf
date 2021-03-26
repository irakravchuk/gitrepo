module "iktest" {
	source  = "8f55339ee547.test-env.scalr.com/global/iktest/mod"
	version = "1.0.2"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
