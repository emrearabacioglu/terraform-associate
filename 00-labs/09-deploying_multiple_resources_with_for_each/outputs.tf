output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "The IDs of the for_each-based subnets"
  value       = aws_subnet.subnet
}

output "security_group_ids" {
  description = "The IDs of the for_each-based security groups"
  value       = aws_security_group.sg
}

output "route_table_ids" {
  description = "The IDs of the map-based route tables"
  value       = aws_route_table.rt
}
