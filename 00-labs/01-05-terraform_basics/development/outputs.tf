output "account_id" {
  description = "aws account id"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = true
}

output "region_name" {
  description = "current aws region"
  value       = data.aws_region.current.region
}

output "available_azs" {
  description = "available azs list"
  value       = data.aws_availability_zones.available.names
}

output "vpc_id" {
  description = "ID of the dev VPC"
  value       = aws_vpc.development.id
}

output "combined_info" {
  description = "combined region and account information"
  value       = "${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}"
  sensitive   = true
}