module "tftest" {
	source  = "905d698d.devel.scalr.com/env-t6guoufp26tnqd8/tftest/aws"
	version = "0.0.5"
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
