terraform {
  cloud {

    organization = "saintgobain22"

    workspaces {
      name = "terraform-training"
    }
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {

  }

  subscription_id = var.sid
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret

}
