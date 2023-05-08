module "s3" {
  source                        = "./modules/s3"
  s3_bucket_name                = var.s3_bucket_name
  smresume_cf_arn               = module.cloudfront.smresume_cf_arn
  smresume_s3_arn               = module.s3.smresume_s3_arn
}

module "cloudfront" {
  source                        = "./modules/cloudfront"
  s3_bucket_name                = var.s3_bucket_name
  cf_oac_name                   = var.cf_oac_name
  acm_ssl_arn                   = var.acm_ssl_arn
  subdomain                     = var.subdomain
  domain                        = var.domain
  smresume_oac_id               = module.cloudfront.smresume_oac_id
}
