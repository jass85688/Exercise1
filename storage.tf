resource "azurerm_storage_account" "first_Storage_Acc" {
  name                     = "jaspalsgacc1"
  resource_group_name      = azurerm_resource_group.practice_group.name
  location                 = azurerm_resource_group.practice_group.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
   tags = {
      name = "first-sa"
      }

  
}
resource "azurerm_storage_account" "second_Storage_Acc" {
  name                     = "jaspalsgacc2"
  resource_group_name      = azurerm_resource_group.practice_group.name
  location                 = azurerm_resource_group.practice_group.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
    tags = {
      name = "second-sa"
      }
    depends_on = [
      azurerm_storage_account.first_Storage_Acc
    ]
  
}