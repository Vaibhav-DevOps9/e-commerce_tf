variable "abc" {}
variable "xyz" {}

module "azurerm_resource_group" {
    source = "../../../modules/azurerm_resource_group"
    alpha = var.abc          # This variable is defined in the parent module
    beta = var.xyz           # This variable is defined in the parent module
    
}

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../../../modules/azurerm_storage_account"
    
}