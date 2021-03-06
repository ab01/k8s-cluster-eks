variable "cluster-name" {
  type    = "string"
}


variable "vpc_id" {
  type    = "string"
}

variable "subnet_ids" {
  type = "list"
  default = []
}

variable "sg-env-node-id" {
  type = "string"
}
