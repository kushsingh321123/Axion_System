module "rg" {
  source = "../../modules/azurem_resourcegroup"

  rgs = var.resource_groups
}

module "storage" {
  source = "../../modules/azurem_storage_account"

  storage_accounts = {
    for key, storage in var.storage_accounts : key => {
      name                     = storage.name
      location                 = module.rg.resource_groups[storage.resource_group_key].location
      resource_group_name      = module.rg.resource_groups[storage.resource_group_key].name
      account_tier             = storage.account_tier
      account_replication_type = storage.account_replication_type
    }
  }

  depends_on = [
    module.rg
  ]
}