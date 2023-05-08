variable "s3_bucket_name" {
  description = "S3 Bucket Name for website content"
  type        = string
}

variable "cf_oac_name" {
  description = "OAC name for the main website CF Distribution"
}

variable "cf_origin_access_control_id" {
  description = "CF Origin Access Control ID for CF Distribution"
}

variable "acm_ssl_arn" {
  description = "ARN for SSL certificated that must be preconfigured in AWS"
}

variable "subdomain" {
  description = "Subdomain for deployment"
}

variable "domain" {
  description = "Domain for deployment"
}
