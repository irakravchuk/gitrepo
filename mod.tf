module "iktest" {
	source  = "8bf28a4dc973.test-env.scalr.com/acc-svrcncgh453bi8g/iktest/mod"
	version = "1.0.2"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
