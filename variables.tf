variable "resource_group_name" {
  type    = string
  default = "storage-rg-01"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storage_account_name" {
  type    = string
  default = "saanvikit"
}

variable "tags" {
  type = map(string)
  default = {
  project = "saanvikit"
  environment = "dev"
}
}


