variable "cluster-name" {
  type    = "string"
}

variable "max_size" {
  type    = "string"
}

variable "min_size" {
  type    = "string"
}

variable "desired_capacity" {
  type    = "string"
}

variable "instance_type" {
  type    = "string"
}

variable "key_name" {
  type    = "string"
}

variable "subnet_id" {
  type = "list"
  default = []
}