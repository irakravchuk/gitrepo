provider "aws"  {
  region   = var.region
  
  }

provider "aws" {
  alias  = "usw2"
}

#resource "aws_budgets_budget" "ec2_qa" {
 # name                  = "QA_Test2"
 # budget_type           = "COST"
 # limit_amount          = "0.002"
 # limit_unit            = "USD"
 # time_period_end       = "2087-06-15_00:00"
 # time_period_start     = "2017-07-01_00:00"
 # time_unit             = "MONTHLY"
  
 # notification {
 #   comparison_operator        = "GREATER_THAN"
 #   threshold                  = 0.001
 #   threshold_type             = "PERCENTAGE"
 #   notification_type          = "ACTUAL"
 #     }
#}




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

resource "aws_instance" "test_instance_my_instance1" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type1
  subnet_id                   = var.subnet
  associate_public_ip_address = var.associate_public_ip

    tags = merge({ "Name" = format("irak-test -> %s -> %s", substr ("🤔🤷", 0,1), data.aws_ami.ubuntu.name) }, var.tags)
    timeouts {
    create = "10m"
    delete = "15m"
       }
  #tags = merge({ "Name" = "irak"}, var.tags)
 }


resource "aws_ebs_volume" "ebs-volume_for_testing_terraform-AllowFullS3Access" {
  availability_zone = "us-east-1a"
        size = 1
  tags = merge({ "Name" = "irak"}, var.tags)
    }

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid       = "AllowFullS3Access"
    actions   = ["s3:ListAllMyBuckets"]
    resources = ["*"]
  }
}

# Our default security group to access
# the instances over SSH and HTTP
resource "aws_security_group" "default" {
  name        = "terraform_example09876"
  description = "Used in the terraform"
  vpc_id      = "vpc-596aa03e"
  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from the VPC
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


variable "letters" {
  description = "a list of letters"
  default = ["a", "b", "c"]
  }

# Convert letters to upper-case as list
output "upper-case-list" {
  value = [for l in var.letters: upper(l)]
sensitive   = true
}

# Convert letters to upper-case as map
output "upper-case-map" {
  value = {for l in var.letters: l => upper(l)}
sensitive   = true
    }
