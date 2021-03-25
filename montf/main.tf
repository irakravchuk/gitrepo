
provider "aws" {
  #region     = var.region
 # region = ""
  region = "us-east-1"
  #access_key = "${var.scalr_aws_access_key}"
  #secret_key = "${var.scalr_aws_secret_key}" 
}

module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "vpc-12345678"
 

  ingress_cidr_blocks = ["10.10.0.0/16"]
}
