module "ik-modules" {
	source  = "b0021e1a84d6.test-env.scalr.com/global/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
