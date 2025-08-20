module "azurerm_resource_group" {
  source   = "../../modules/azurerm_resource_group"
  for_each = var.abc
  alpha    = each.value.name     # This variable is defined in the parent module
  beta     = each.value.location # This variable is defined in the parent module

}

module "azurerm_storage_account" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_storage_account"
  for_each   = var.stg_acc
  pawan      = each.value.name # This variable is defined in the parent module

  aman  = module.azurerm_resource_group[each.value.name].resource_group_name # This variable is defined in the parent module
  raman = module.azurerm_resource_group[each.value.location].location            # This variable is defined in the parent module
  # The storage_account_name variable is expected to be defined in the parent module  
}