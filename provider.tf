terraform {
   required_providers {
     azurerm = {
       source  = "hashicorp/azurerm"
       version = "4.39.0"
     }
   }
  #  backend "azurerm" {
  #    resource_group_name  = "ram"
  #    storage_account_name = "stg987123987"
  #    container_name       = "vhds"
  #    key                  = ".tfstate"
     
  #  }
}

provider "azurerm" {
  features {}
  subscription_id = "f0c6c28a-7429-42b3-aefa-63439e20a651"
}