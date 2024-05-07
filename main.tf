module "networking" {
  source = "git@github.com:fletchertom/terraform-networking.git?ref=1.0.0"

  rgs                     = var.rgs
  vnets                   = var.vnets
  deploy_storage_accounts = true
}