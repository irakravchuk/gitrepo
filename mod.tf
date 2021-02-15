module "ira-master" {
	source  = "cbb883747b46.test-env.scalr.com/env-svrcnchebt61e30/ira-master/aws"
	version = "1.1.1"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
