module "ik-modules" {
	source  = "1794f0194149.test-env.scalr.com/global/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
