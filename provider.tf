terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "tomedf"
    storage_account_name = "edfdemotf"
    container_name       = "state"
    subscription_id      = "36122110-e250-404d-a477-7ffd131a6b6f"
    key                  = "init.tfstate"
  }
}

provider "azurerm" {
  features {}
}