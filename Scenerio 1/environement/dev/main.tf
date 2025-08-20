module "azurerm_resource_group" {
    source = "../../../modules/azurerm_resource_group"
     
}

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../../modules/azurerm_storage_account"
    
}