module "azurerm_resource_group" {
    source = "../../../modules/azurerm_resource_group"
    alpha = "rg-dev-ecom-1"       # This variable is passed from the parent module to the child module
    beta = "West Europe"        # This variable is passed from the parent module to the child module
    
}

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../../modules/azurerm_storage_account"
    
}

