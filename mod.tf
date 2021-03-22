module "tftest" {
	source  = "c499b6739b3e.test-env.scalr.com/global/tftest/aws"
	version = "0.0.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
