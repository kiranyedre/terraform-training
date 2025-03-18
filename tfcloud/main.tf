resource "azurerm_resource_group" "kiran-rg" {
  name     = "kiran"
  location = var.region

}

resource "azurerm_virtual_network" "vnet1" {
  name = "vnet_kiran"
  location = var.region
  address_space = ["91.91.91.0/25"]
  resource_group_name = azurerm_resource_group.kiran-rg.name
  
}

resource "azurerm_virtual_network" "vnet2" {
  name = "vnet_kiran2"
  location = var.region
  address_space = ["90.91.91.0/25"]
  resource_group_name = azurerm_resource_group.kiran-rg.name
  
}