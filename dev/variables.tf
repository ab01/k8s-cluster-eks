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
