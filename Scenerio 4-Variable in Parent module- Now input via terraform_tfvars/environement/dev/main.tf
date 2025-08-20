module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  alpha  = var.abc # This variable is defined in the parent module
  beta   = var.xyz # This variable is defined in the parent module

}

module "azurerm_storage_account" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_storage_account"
  aman       = var.abc # This variable is defined in the parent module
  raman      = var.xyz # This variable is defined in the parent module
  # The storage_account_name variable is expected to be defined in the parent module  
  storage_account_name = var.stg_acc
}