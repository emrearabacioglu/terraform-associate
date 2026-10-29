variable "vpc_cidr" {
  description = "CIDR block for dev. VPC"
  type        = string
  default     = "172.16.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR for dev. subnet"
  type        = string
  default     = "172.16.1.0/24"
}