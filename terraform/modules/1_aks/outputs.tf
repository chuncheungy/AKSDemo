# acr
output "acr_login_server" {
  value = azurerm_container_registry.this.login_server
}

output "acr_admin_username" {
  value = azurerm_container_registry.this.admin_username
}

output "acr_admin_password" {
  value     = azurerm_container_registry.this.admin_password
  sensitive = true
}

# aks
output "aks_host" {
  value = azurerm_kubernetes_cluster.this.kube_config[0].host
}

output "aks_ca_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.this.kube_config[0].cluster_ca_certificate)
}

output "aks_client_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.this.kube_config[0].client_certificate)
}

output "aks_client_key" {
  value = base64decode(azurerm_kubernetes_cluster.this.kube_config[0].client_key)
}