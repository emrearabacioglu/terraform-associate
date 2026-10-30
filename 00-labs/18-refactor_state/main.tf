# # VPC
# resource "aws_vpc" "main" {
#   cidr_block = var.vpc_cidr

#   tags = {
#     Name        = "${var.prefix}-vpc"
#     Environment = var.environment
#     Lab         = var.lab_name
#   }
# }

# # Subnet
# resource "aws_subnet" "app" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = var.subnet_cidr

#   tags = {
#     Name        = "${var.prefix}-subnet"
#     Environment = var.environment
#     Lab         = var.lab_name
#   }
# }

# # Route Table
# resource "aws_route_table" "main" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name        = "${var.prefix}-rt"
#     Environment = var.environment
#     Lab         = var.lab_name
#   }
# }

# removed {
#   from = aws_route_table.main
#   lifecycle { destroy = true }
# }

# # Security Group
# resource "aws_security_group" "app" {
#   name        = "${var.prefix}-web-sg"
#   description = "Lab security group"
#   vpc_id      = aws_vpc.main.id

#   tags = {
#     Name        = "${var.prefix}-web-sg"
#     Environment = var.environment
#     Lab         = var.lab_name
#   }
# }

# module "network" {
#   source = "./modules/network"

#   vpc_id      = aws_vpc.main.id
#   subnet_cidr = var.subnet_cidr
#   prefix      = var.prefix
#   environment = var.environment
#   lab_name    = var.lab_name
# }

# moved {
#   from = aws_security_group.web
#   to   = aws_security_group.app
# }

# moved {
#   from = aws_subnet.app
#   to   = module.network.aws_subnet.app
# }

# moved {
#   from = module.network.aws_subnet.app
#   to   = aws_subnet.app
# }

removed {
  from = aws_vpc.main
  lifecycle { destroy = false }
}

removed {
  from = aws_subnet.app
  lifecycle { destroy = false }
}

removed {
  from = aws_security_group.app
  lifecycle { destroy = false }
}