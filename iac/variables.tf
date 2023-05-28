variable "resource_group_name" {
  description = "Name of the resource group"
  default = "rg-test-skc-1245"
  type = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  default = "East US"
  type = string
}

variable "az_storage_key" {
  description = "remote storage key"
  type = string
}