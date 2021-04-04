module "ekssubm" {
	source  = "1de576eea2b2.test-env.scalr.com/global/ekssubm/aws"
	version = "0.0.6"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
