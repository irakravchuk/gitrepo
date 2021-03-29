module "modik" {
	source  = "3e68a903bd8c.test-env.scalr.com/global/modik/was"
	version = "1.1.6"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
