resource "azurerm_resource_group" "rg" {
  name     = "rg_${var.app_service_name}"
  location = "West Europe"
}

resource "azurerm_service_plan" "sp" {
  name                = var.app_service_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = var.app_service_sku
}

resource "azurerm_linux_web_app" "webapp" {
  name                = var.app_service_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.sp.location
  service_plan_id     = azurerm_service_plan.sp.id
  depends_on = [ azurerm_resource_group.rg, azurerm_service_plan.sp ]
  

  site_config {
    application_stack {
      dotnet_version = "7.0"
    }
  }
}