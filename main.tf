module "networking" {
  source = "./modules/networking"

  rgs                     = var.rgs
  vnets                   = var.vnets
  deploy_storage_accounts = true
}