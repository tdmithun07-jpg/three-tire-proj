terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
  cloud {
    organization = "three-tire-proj"
    workspaces {
      name = "three-tire-project"
    }
  }
}

provider "azurerm" {
  features {}
}
