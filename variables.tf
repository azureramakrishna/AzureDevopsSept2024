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

variable "count_value" {
  type    = number
}
