# This file starts intentionally empty.
#
# The VPC, subnet, and security group created in Lab 18 still exist in
# AWS, but they are no longer tracked in Terraform state. During this
# lab you will add resource and import blocks here to bring each one
# back under Terraform management.


# VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = "${var.prefix}-vpc"
    Environment = var.environment
    Lab         = var.lab_name
  }
}

# Subnet
resource "aws_subnet" "app" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = {
    Name        = "${var.prefix}-subnet"
    Environment = var.environment
    Lab         = var.lab_name
  }
}

import {
  to = aws_subnet.app
  id = "subnet-01f23cf75a035e2d7"
}

import {
    to = aws_security_group.app
    id = "sg-03df28cb25b8e5d18"
}

# __generated__ by Terraform from "sg-03df28cb25b8e5d18"
resource "aws_security_group" "app" {
  description            = "Lab security group"
  egress                 = []
  ingress                = []
  name                   = "lab-web-sg"
  region                 = "eu-central-1"
  revoke_rules_on_delete = null
  tags = {
    Environment = "dev"
    Lab         = "lab18"
    Name        = "lab-web-sg"
  }
  tags_all = {
    Environment = "dev"
    Lab         = "lab18"
    Name        = "lab-web-sg"
  }
  vpc_id = "vpc-008ae30e7c9b7f802"
}