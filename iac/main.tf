# module "resource_group" {
#   source = "git::https://github.com/sb141/terraform.git//iac/modules/ResourceGroup"
#   rg_name = var.resource_group_name
#   location = var.location
# }

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# data "azurerm_resource_group" "rg" {
#   name = var.resource_group_name
# }

# data "azurerm_resource_group" "network-rg" {
#   name = "rg-network-eus-001"
# }

# data "azurerm_virtual_network" "vnet"{
#   name = "vnet-mesh-eus-001"
#   resource_group_name = data.azurerm_resource_group.network-rg.name
# }

# data "azurerm_subnet" "subnet" {
#   name = "subnet1"
#   virtual_network_name = data.azurerm_virtual_network.vnet.name
#   resource_group_name = data.azurerm_resource_group.network-rg.name
# }


# resource "azurerm_storage_account" "adls" {
#   name                     = "dlstest211331"
#   resource_group_name      = data.azurerm_resource_group.rg.name
#   location                 = data.azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   is_hns_enabled = true

#   network_rules {
#     default_action = "Deny"
#     bypass = ["AzureServices"]
#     ip_rules = ["61.246.116.2"]
#   }
# }

# resource "azurerm_storage_container" "raw" {
#   name                  = "raw"
#   storage_account_name  = azurerm_storage_account.adls.name
#   container_access_type = "private"
# }

# # Create Private Endpoint
# resource "azurerm_private_endpoint" "endpoint" {
#   name                = "pep${azurerm_storage_account.adls.name}"
#   resource_group_name = data.azurerm_resource_group.network-rg.name
#   location            = data.azurerm_resource_group.network-rg.location
#   subnet_id           = data.azurerm_subnet.subnet.id
  
#   private_service_connection {
#     name                           = "psc${azurerm_storage_account.adls.name}"
#     private_connection_resource_id = azurerm_storage_account.adls.id
#     is_manual_connection           = false
#     subresource_names              = ["blob"]
#   }
# }

# resource "azurerm_private_dns_zone" "private_dns" {
#   name                = "privatelink.blob.core.windows.net"
#   resource_group_name = data.azurerm_resource_group.network-rg.name
# }