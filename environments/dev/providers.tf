terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.55.0"
    }
  }

  # cloud {
  #   organization = "three-tire-proj"
  #   workspaces {
  #     name = "three-tire-project"
  #   }
  #  }
  # }

backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "statefilestorage2212"
    container_name       = "statefilecontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "513cd041-2e87-42df-990d-02ccf836f17d"
  tenant_id = "7ec95563-43f7-4a78-8c0d-2ddf6e20f427"
  features {}
 }
