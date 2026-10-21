resource "azurerm_mssql_server" "mysql_server_block" {

  for_each = var.sql_servers

  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
}

resource "azurerm_mssql_database" "sql_database_block" {

  for_each = var.sql_servers

  name      = each.value.db_name
  server_id = azurerm_mssql_server.mysql_server_block[each.key].id
  sku_name  = "S0"
}