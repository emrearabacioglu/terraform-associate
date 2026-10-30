variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}

variable "subnet_config" {
  description = "Map of subnet config"
  type        = map(string)
  default = {
    "public"   = "10.0.1.0/24"
    "private1" = "10.0.2.0/24"
    "private2" = "10.0.3.0/24"
  }
}

variable "subnet_azs" {
  description = "map of subnet azs"
  type        = map(string)
  default = {
    "public"   = "eu-central-1a"
    "private1" = "eu-central-1b"
    "private2" = "eu-central-1c"
  }
}

variable "security_group_config" {
  description = "maps of sg config"
  type        = map(number)
  default = {
    "web" = 80
    "app" = 8080
    "db"  = 3306
  }
}

variable "route_tables" {
  description = "Map of route tables to create"
  type        = map(string)
  default = {
    "public"   = "Public route table"
    "private1" = "Private route table 1"
    "private2" = "Private route table 2"
  }
}
