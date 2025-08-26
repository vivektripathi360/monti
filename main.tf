resource "azurerm_resource_group" "rg" {
  count = 2
  name     = var.rg_name[count.index]
  location = var.location[count.index] 
}


resource "azurerm_storage_account" "stg" {
  depends_on = [ azurerm_resource_group.rg]
  name                     = "stg981"
  resource_group_name      = azurerm_resource_group.rg[0].name
  location                 = azurerm_resource_group.rg[0].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "cont" {
  depends_on = [ azurerm_storage_account.stg ]
  name                  = "vhds"
  storage_account_id  = azurerm_storage_account.stg.id
  container_access_type = "private"
  
}
