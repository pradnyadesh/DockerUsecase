resource "azurerm_resource_group" "rg-project01" {
  name = var.resourcegroup
  location = var.location
}

resource "azurerm_container_registry" "acrdemo" {
  name = var.acr_name
  location = var.location
  resource_group_name = azurerm_resource_group.rg-project01.name
  sku = "Standard"
  admin_enabled = true
}

resource "azurerm_service_plan" "appserviceplan" {
  name                = "webapp-asp1609"
  location            = azurerm_resource_group.rg-project01.location
  resource_group_name = azurerm_resource_group.rg-project01.name
  os_type             = "Linux"
  sku_name            = "B1"
}
resource "azurerm_linux_web_app" "webapp" {
  name                = var.webapp_name
  resource_group_name = var.resourcegroup
  location            = var.location
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  site_config {
    always_on = true

    application_stack {
      docker_image_name = "nginx:alpine"
        }
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
  }
}
