module "tfstate_backend" {
  source  = "cloudposse/tfstate-backend/aws"
  version = "0.33.0"

  force_destroy                 = var.force_destroy
  prevent_unencrypted_uploads   = var.prevent_unencrypted_uploads
  enable_server_side_encryption = var.enable_server_side_encryption
  arn_format                    = var.arn_format
  context                       = module.this.context
}
