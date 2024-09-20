variable "resource_group_name" {
  type    = string
  default = "terraform-rg"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storage_account_name" {
  type    = string
  default = "Saanvikit13092024"
}

variable "tags" {
  type = map(string)
  default = {
    project     = "saanvikit"
    environment = "dev"
  }
}

variable "virtual_network_name" {
  type    = string
  default = "saanvikit-vnet-01"
}

variable "virtual_network_address" {
  type    = list(string)
  default = ["10.0.0.0/24"]
}

variable "subnet_name" {
  type    = string
  default = "saanvikit-snet-01"
}

variable "subnet_address" {
  type    = list(string)
  default = ["10.0.0.0/24"]
}

variable "pip_name" {
  type    = string
  default = "saanvikit-pip-01"
}

variable "nsg_name" {
  type    = string
  default = "saanvikit-nsg-01"
}

variable "nic_name" {
  type    = string
  default = "saanvikit-nic-01"
}

variable "vm_name" {
  type    = string
  default = "saanvikit-vm-01"
}

variable "vm_size" {
  type    = string
  default = "Standard_D2s_v3"
}

variable "adminUser" {
  type    = string
  default = "azureuser"
}

variable "adminPassword" {
  type = string
}