terraform {
  required_version = "~>1.0.9"  # changed
  required_providers {   # new block
    aws = {
      version = "~> 3.7.0"
    }
  }
}

provider "aws" {
  # version = "~> 3.7.0"  # changed
  region  = "us-west-2"  # changed
}

# resource "aws_instance" "this" {
#   ami           = "ami-01f87c43e618bf8f0" # ubuntu 20.04 (http://cloud-images.ubuntu.com/locator/ec2/)
#   instance_type = var.instance_type
# 
#   tags = {
#     Terraform = "true"
#     Name      = "test-instance"
#   }
# }
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = var.instance_type
  # instance_type = "t2.micro"  # set interactively as specified in variables.tf

  tags = {
    Terraform = "true"
    Name      = "test-instance"
  }
}             
