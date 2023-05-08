variable "s3_bucket_name" {
  description = "S3 Bucket Name for website content"
  type        = string
}

variable "smresume_cf_arn" {
  description = "ARN of the smresume CF Distribution"
  type        = string
}

variable "smresume_s3_arn" {
  description = "ARN of the S3 Bucket for website content"
}
