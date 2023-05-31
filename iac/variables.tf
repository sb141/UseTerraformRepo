variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "rg-test-skc-123554"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  default     = "East US"
  type        = string
}