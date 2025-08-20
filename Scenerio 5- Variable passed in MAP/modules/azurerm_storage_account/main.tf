resource "azurerm_storage_account" "stg-1" {
  name                     = var.pawan
  resource_group_name      = var.aman
  location                 = var.raman
  account_tier             = "Standard"
  account_replication_type = "GRS"
}