module "ik-modules" {
	source  = "ddd03d260884.test-env.scalr.com/global/ik-modules/aws"
	version = "1.4.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
