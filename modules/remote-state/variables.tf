variable "region" {
  default     = "us-east-1"
  description = "The AWS region."
}

variable "cluster-name" {
  type     = "string"
  description = "The name of our org, i.e. examplecom."
}
