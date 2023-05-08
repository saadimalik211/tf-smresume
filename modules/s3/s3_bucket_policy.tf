resource "aws_s3_bucket_policy" "tfer--smresume-s3bucketpolicy" {
  bucket = var.s3_bucket_name

  policy = jsonencode({
    Version = "2008-10-17"
    Id      = "PolicyForCloudFrontPrivateContent"
    Statement = [
      {
        Sid       = "AllowCloudFrontServicePrincipal"
        Effect    = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action   = "s3:GetObject"
        Resource = "${var.smresume_s3_arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = var.smresume_cf_arn
          }
        }
      }
    ]
  })
}
