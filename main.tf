terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "saanvikit-group"
    storage_account_name  = "saanvikit"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
    #use_oidc              = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}


#############################################
# create a resource group
#############################################
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

#############################################
# create a storage account
#############################################
resource "azurerm_storage_account" "sa" {
  name                     = "${lower(var.storage_account_name)}"
  #count                    = var.count_value
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}
