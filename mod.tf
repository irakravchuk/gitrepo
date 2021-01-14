module "ik-modules" {
	source  = "scalr-iacp.scalr.io/org-sfuari395m7sck1/ik-modules/aws"
	version = "1.3.1"

	# Set 1 required variable below.

	text_var = <value>
}
	#text_var = "string"
}
variable "text_var" {
 type = string
 default = null
}
