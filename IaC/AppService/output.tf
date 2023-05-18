output "app_service_output" {
    value = {
        name = azurerm_linux_web_app.webapp.name
        url = "https://${azurerm_linux_web_app.webapp.name}.azurewebsites.net"
        resource_group_name = azurerm_resource_group.rg.name
    }
}