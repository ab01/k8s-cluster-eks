#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-environment"
  type    = "string"
}

variable "cluster" {
  default = "kubernetes"
  type    = "string"
}

variable "user" {
  default = "aws"
  type    = "string"
}


variable "max_size" {
  default = 2
  type    = "string"
}

variable "min_size" {
  default = 2
  type    = "string"
}

variable "desired_capacity" {
  default = 2
  type    = "string"
}

variable "instance_type" {
  default = 2
  type    = "string"
}

variable "subnet_ids" {
  type = "list"
  default = []
}

variable "availability_zones" {
  type = "list"
  default = ["us-east-1a", "us-east-1b"]
}

variable "cidr_block" {
  default = "10.7.0.0/16"
}

variable "public_cidr_block" {
  type = "list"
  default = ["10.7.1.0/24", "10.7.3.0/24"]
}


