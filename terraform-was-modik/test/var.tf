variable "win_ami" {
default = "ami-09f2114fecbe506e2"

}


variable "region" {
  type = string
  default = "us-east-1"
   }



variable "instance_type1" {
  type = string
  default = "m1.small"
}



variable "network" {
  type = string
  default = "vpc-596aa03e"
 }

variable "subnet" {
  type = string
default = "subnet-7e3fd71a"
  }

variable "associate_public_ip" {
  type    = bool
  default = true
}

variable "tags" {
  type = map
  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
    test-env-owner = "irak"
  }
}
