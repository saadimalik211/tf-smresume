output "smresume_cf_arn" {
  description = "ARN of the smresume CF Distribution"
  value       = aws_cloudfront_distribution.tfer--smresume-cf.arn
}
