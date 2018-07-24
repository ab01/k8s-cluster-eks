variable "environment" {}

variable "region" {
  default = "us-east-1"
}

variable "cidr_block" {}

variable "cluster-name" {
  type = "string"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}
variable "enable_dns_support" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}
