variable "s3_bucket_name" {
  description = "S3 bucket name for the main website"
}

variable "cf_oac_name" {
  description = "OAC name for the main website CF Distribution"
}

variable "cf_origin_access_control_id" {
  description = "CF Origin Access Control ID for CF Distrbution"
}

variable "acm_ssl_arn" {
  description = "ARN for SSL certificate that must be preconfigured"
}

variable "subdomain" {
  description = "Subdomain for deployment"
}

variable "domain" {
  description = "Domain for deployment"
}
