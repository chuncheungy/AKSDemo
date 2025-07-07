resource "azurerm_resource_group" "this" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_container_registry" "this" {
  name                = var.aks_name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aks_name
  resource_group_name = var.rg_name
  location            = var.location
  node_resource_group = var.aks_node_rg_name
  kubernetes_version  = var.aks_version
  dns_prefix          = var.aks_name

  default_node_pool {
    name       = "system"
    node_count = 1
    vm_size    = var.aks_node_size

    upgrade_settings {
      drain_timeout_in_minutes      = 0
      max_surge                     = "10%"
      node_soak_duration_in_minutes = 0
    }
  }

  identity {
    type = "SystemAssigned"
  }

  depends_on = [azurerm_resource_group.this, azurerm_container_registry.this]
}

resource "azurerm_role_assignment" "this" {
  scope                = azurerm_container_registry.this.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
}
