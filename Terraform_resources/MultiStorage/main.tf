# provider definition for azure 
provider "azurerm" {
  features {}

  subscription_id = "2e28c82c-17d7-4303-b27a-4141b3d4088f"
  tenant_id       = "459865f1-a8aa-450a-baec-8b47a9e5c904"
}

# Azure terraform backend
terraform {
  backend "azurerm" {
    resource_group_name  = "storage-resource-group" # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "saanvikit"              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "sa.terraform.tfstate"   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
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
  name                     = "${lower(var.storage_account_name)}${count.index + 1}"
  count                    = var.count_value
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}
