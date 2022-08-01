module "log_bucket" {
  create_bucket = var.enable_flow_log == true ? true :false
  source  = "./modules/s3"
  bucket        = "logs-bucket"
  acl           = "log-delivery-write"
  force_destroy = true

  attach_elb_log_delivery_policy        = true
  attach_lb_log_delivery_policy         = true
  attach_deny_insecure_transport_policy = true
  attach_require_latest_tls_policy      = true
}
