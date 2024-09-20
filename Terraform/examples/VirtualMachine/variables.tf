variable "client_id" {
  type    = string
  default = "8ceb95e5-b17d-4f32-821a-8b9e1d0d2983"
}

variable "client_secret" {
  type    = string
  default = "lvf8Q~ZmqExizBB774g8Ux~hkPvnIlXP3PhgKa1z"
}

variable "subscription_id" {
  type    = string
  default = "2e28c82c-17d7-4303-b27a-4141b3d4088f"
}

variable "tenant_id" {
  type    = string
  default = "459865f1-a8aa-450a-baec-8b47a9e5c904"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "virtual_network_name" {
  type = string
}

variable "virtual_network_address" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "subnet_address" {
  type = list(string)
}

variable "pip_name" {
  type = string
}

variable "nsg_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "adminUser" {
  type = string
}

variable "adminPassword" {
  type = string
}