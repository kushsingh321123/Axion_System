variable "resource_groups" {
  type = map(object({
    rg_name     = string
    rg_location = string
  }))
}
variable "storage_accounts" {
  type = map(object({
    name                     = string
    resource_group_key       = string
    account_tier             = string
    account_replication_type = string
  }))
}