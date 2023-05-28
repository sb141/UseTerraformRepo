module "ExternalResourceGroup" {
  source = "git::https://github.com/sb141/terraform/iac/modules/ResourceGroup"
  rg_name = var.resource_group_name
  location = var.location
}