module "ExternalResourceGroup" {
  source = "https://github.com/sb141/terraform/tree/main/iac/modules/ResourceGroup"
  rg_name = var.resource_group_name
  location = var.location
}