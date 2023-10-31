variable "domain" {
  description = "The domain name for which the certificate should be issued"
  type        = string
}

variable "subdomain" {
  description = "The subdomain name for which the certificate should be issued"
  type        = string
}

variable "hosted_zone_id" {
  description = "The ID of the hosted zone that will be used by ACM for domain validation"
  type        = string
}
