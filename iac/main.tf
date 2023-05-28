# module "resource_group" {
#   source = "git::https://github.com/sb141/terraform.git//iac/modules/ResourceGroup"
#   rg_name = var.resource_group_name
#   location = var.location
# }

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}