terraform {
  required_version = ">= 1.10"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14"
    }
  }
}
provider "azurerm" {
  subscription_id            = var.subscription_id
  use_oidc                   = true
  skip_provider_registration = "true"
  features {}
}