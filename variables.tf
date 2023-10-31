variable "s3_bucket_name" {
  description = "S3 Bucket Name for website content"
  type        = string
}

variable "cf_oac_name" {
  description = "OAC name for the main website CF Distribution"
}

variable "smresume_oac_id" {
  description = "Origin Access Control ID for CF Distribution"
}

variable "subdomain" {
  description = "Subdomain for deployment"
}

variable "domain" {
  description = "Domain for deployment"
}

#Hosted zone ID from Route53
variable "hosted_zone_id" {
  description = "The ID of the hosted zone that will be used by ACM for domain validation"
  type        = string
}

