output "smresume_cf_arn" {
  description = "ARN of the smresume CloudFront distribution."
  value       = aws_cloudfront_distribution.tfer--smresume-cf.arn
}

output "smresume_oac_id" {
  description = "ARN of the smresume Origin Access Control for CloudFront distribution."
  value       = aws_cloudfront_origin_access_control.tfer--smresume-oac.id
}
