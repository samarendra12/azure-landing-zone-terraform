terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  # In production CI/CD, backend values are injected dynamically
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}
