output "aws_s3_bucket_tfer--smresume-s3_id" {
  value = "${aws_s3_bucket.tfer--smresume-s3.id}"
}

output "aws_cloudfront_origin_access_control_tfer--smresume-oac_id" {
  value = "${aws_cloudfront_origin_access_control.tfer--smresume-oac.id}"
}

output "oac_id" {
  value = aws_cloudfront_origin_access_control.tfer--smresume-oac.id
}
