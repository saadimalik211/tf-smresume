resource "aws_cloudfront_origin_access_control" "tfer--smresume-oac" {
  name                              = var.cf_oac_name
  description                       = "Terraform created OAC"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
