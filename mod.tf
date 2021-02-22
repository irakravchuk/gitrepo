module "tftest" {
	source  = "56caab2fd335.test-env.scalr.com/acc-svrcncgh453bi8g/tftest/aws"
	version = "0.0.5"

	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
