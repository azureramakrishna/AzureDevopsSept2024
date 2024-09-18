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
    key                  = "webapp.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

# Use this data source to access information about an existing Resource Group.
data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

# create a app service plan
resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  os_type             = "Linux"
  sku_name            = "P1v3"
}

# create a app service
resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}

