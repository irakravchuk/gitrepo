#provider "aws" {
#  region = "us-west-1"
#}

module "test" {
    source  = "./test"
    }


    terraform {
      backend "remote" {
        hostname = "3e68a903bd8c.test-env.scalr.com"
        organization = "env-svrcnchebt61e30"
        token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdGQyaXN1bzhwZTRyam1vIn0._m2vRbrw_YTMHql_1m4n1fpAQeWvf_MI4ZmSXGZN5g4"

        workspaces {
          name = "my-workspace-name"
        }
      }
    }

    provider "aws" {
  region = "us-east-1"
}




data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}


resource "aws_instance" "terraform-test-instance-irak22" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.nano"

  tags = {
    name = "test-instance-irak"
    timestamp = "${timestamp()}"
  }
  subnet_id = var.subnet
}



module "ec2_cluster" {
    source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.nano"
  monitoring             = true
  subnet_id = var.subnet


  tags = {
    name = "test-instance-irak"
    timestamp = "${timestamp()}"
  }
}

variable "failover_replica_ip_configuration" {
  description = "The ip configuration for the failover replica instances."
  type = object ({
   # authorized_networks = list(map(string))
   # ipv4_enabled        = bool
   # private_network     = string
   # require_ssl         = bool
  })
  default = {
   # authorized_networks = []
   # ipv4_enabled        = true
   # private_network     = null
   # require_ssl         = false
  }
}

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
