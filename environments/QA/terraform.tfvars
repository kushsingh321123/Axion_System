resource_groups = {

  rg1 = {
    rg_name     = "KDEMO1"
    rg_location = "West US"
  }

  rg2 = {
    rg_name     = "KDEMO2"
    rg_location = "East US"
  }

}

storage_accounts = {

  storage1 = {
    name                     = "ktestqa001"
    resource_group_key       = "rg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }

  storage2 = {
    name                     = "ktestqa002"
    resource_group_key       = "rg2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
