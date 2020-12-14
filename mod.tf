module "ik-modules" {
	source  = "0b15918fe1e7.test-env.scalr.com/acc-svrcncgh453bi8g/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
