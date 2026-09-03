output "storage_accounts" {
  value = {
    for key, storage in azurerm_storage_account.storage : key => {
      name                = storage.name
      resource_group_name = storage.resource_group_name
      location            = storage.location
    }
  }
}