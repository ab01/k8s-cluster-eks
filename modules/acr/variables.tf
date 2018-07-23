variable "environment" {
  description = "Tags"
}

variable "domain" {
  description = "Domian name to request ACM certificate"
}

variable "zone_ids" {
  type = "list"
  description = "Zone Id"
}


variable "validate" {
  description = "Validate ACM certificates"
}
