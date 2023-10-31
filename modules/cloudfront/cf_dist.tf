resource "aws_cloudfront_distribution" "tfer--smresume-cf" {
  aliases = [format("%s.%s", var.subdomain, var.domain)]

  default_cache_behavior {
    allowed_methods          = ["GET", "HEAD"]
    cache_policy_id          = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods           = ["GET", "HEAD"]
    compress                 = "true"
    default_ttl              = "0"
    max_ttl                  = "0"
    min_ttl                  = "0"
    origin_request_policy_id = "aa2aade1-1596-4f50-a85e-a47e407ad0d1"
    smooth_streaming         = "false"
    target_origin_id         = format("%s.s3-website-us-east-1.amazonaws.com", var.s3_bucket_name)
    viewer_protocol_policy   = "redirect-to-https"
  }

  default_root_object = "index.html"
  enabled             = "true"
  http_version        = "http2and3"
  is_ipv6_enabled     = "false"

  origin {
    connection_attempts      = "3"
    connection_timeout       = "10"
    domain_name              = format("%s.s3.us-east-1.amazonaws.com", var.s3_bucket_name)
    origin_access_control_id = var.smresume_oac_id
    origin_id                = format("%s.s3-website-us-east-1.amazonaws.com", var.s3_bucket_name)
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  retain_on_delete = "false"

  viewer_certificate {
    acm_certificate_arn            = var.acm_ssl_arn  #Use the variable defined in cloudfront's variables.tf
    cloudfront_default_certificate = "false"
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}
