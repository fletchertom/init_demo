terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "eisworkshop"
    container_name       = "state"
    subscription_id      = "652a7ae0-ba5c-44a3-aa80-69e61171f84c"
    key                  = "tom.tfstate"
  }
}

provider "azurerm" {
  features {}
}