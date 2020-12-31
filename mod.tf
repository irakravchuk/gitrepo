module "ira-master" {
	source  = "610daf199735.test-env.scalr.com/env-svrcnchebt61e30/ira-master/aws"
	version = "1.1.1"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
