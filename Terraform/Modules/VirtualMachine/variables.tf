variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "storage_account_name" {
  type    = string
}

variable "tags" {
  type = map(string)
}

variable "virtual_network_name" {
  type    = string
}

variable "virtual_network_address" {
  type    = list(string)
}

variable "subnet_name" {
  type    = string
}

variable "subnet_address" {
  type    = list(string)
}

variable "pip_name" {
  type    = string
}

variable "nsg_name" {
  type    = string
}

variable "nic_name" {
  type    = string
}

variable "vm_name" {
  type    = string
}

variable "vm_size" {
  type    = string
}

variable "adminUser" {
  type    = string
}

variable "adminPassword" {
  type = string
}