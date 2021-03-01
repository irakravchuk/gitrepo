module "ik-modules" {
	source  = "mainiacp.org3.te.scalr-labs.net/global/ik-modules/aws"
	version = "1.3.1"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
