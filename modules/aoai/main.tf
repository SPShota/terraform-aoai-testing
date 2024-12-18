resource "azurerm_cognitive_account" "main" {
  name                  = "${var.app_name}-cognitive-account"
  resource_group_name   = var.resource_group_name
  location              = var.location
  sku_name              = "S0"
  kind                  = "OpenAI"
  custom_subdomain_name = var.subdomain_name
}

resource "azurerm_cognitive_deployment" "gpt_4o" {
  name                 = "${var.app_name}-cognitive-deployment-gpt-4o"
  cognitive_account_id = azurerm_cognitive_account.main.id
  model {
    format  = "OpenAI"
    name    = "gpt-4o"
    version = "2024-08-06"
  }
  sku {
    name     = "Standard"
    capacity = 10
  }
}

resource "azurerm_cognitive_deployment" "gpt_4o_mini" {
  name                 = "${var.app_name}-cognitive-deployment-gpt-4o_mini"
  cognitive_account_id = azurerm_cognitive_account.main.id
  model {
    format  = "OpenAI"
    name    = "gpt-4o-mini"
    version = "2024-07-18"
  }
  sku {
    name     = "Standard"
    capacity = 10
  }
}