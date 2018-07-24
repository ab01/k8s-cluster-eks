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

variable "vpc_cidr" {}

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

variable "vpc_id" {
  type    = "string"
}

