module "ira" {
	source  = "irak.likehosted.scalr.com/env-t69evhm72a44dqo/ira/aws"
	version = "1.1.2"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = "null"
}
