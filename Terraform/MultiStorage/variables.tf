variable "resource_group_name" {
  type    = string
  default = "multi-sa-rg"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "storage_account_name" {
  type    = string
  default = "Saanvikit2024"
}

variable "tags" {
  type = map(string)
  default = {
    project     = "saanvikit"
    environment = "dev"
  }
}

variable "count_value" {
  type    = number
  default = 50
}