module "ik-modules" {
	source  = "3a797a70.devel.scalr.com/env-t7irvs6nvk2b9n0/ik-modules/aws"
	version = "1.3.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
