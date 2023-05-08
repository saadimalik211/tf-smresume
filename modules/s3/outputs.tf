output "smresume_s3_arn" {
  description = "ARN of the smresume S3 bucket"
  value       = aws_s3_bucket.tfer--smresume-s3.arn
}
