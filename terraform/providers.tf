terraform {
  required_version = "~>1.9.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~>2.32.0"
    }
  }
}

provider "azurerm" {
  features {}
  tenant_id       = local.config.default.tenant_id
  subscription_id = local.config.default.subscription_id
}

provider "kubernetes" {
  host                   = module.cgi_aks.aks_host
  cluster_ca_certificate = module.cgi_aks.aks_ca_certificate
  client_certificate     = module.cgi_aks.aks_client_certificate
  client_key             = module.cgi_aks.aks_client_key
}
