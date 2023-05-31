# -------------- terraform.tf - Terraform Settings Block---------------

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  # Store Terraform state to Azure Storage Container
  backend "azurerm" {
    resource_group_name = "rg-storage_state"
    storage_account_name = "staccstate123456"
    container_name = "tstate"
    key = "terraform.tfstate"
  }
}
