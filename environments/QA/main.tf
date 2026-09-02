module "rg" {
  source = "../../modules/azurem_resourcegroup"

  rgs = var.resource_groups
}