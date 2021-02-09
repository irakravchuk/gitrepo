module "ik-modules" {
	source  = "7dd567a2b2b4.test-env.scalr.com/global/ik-modules/aws"
	version = "1.3.1"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
