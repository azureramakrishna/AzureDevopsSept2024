# provider definition for azure 
provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# Azure terraform backend
terraform {
  backend "azurerm" {
    resource_group_name  = "storage-resource-group"   # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "saanvikit"                # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "remote.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

module "storage_account_name" {
  source = "git::https://github.com/azureramakrishna/AzureDevopsSept2024.git"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  tags                 = var.tags
  count_value          = var.count_value
}