<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_kubernetes_cluster.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | acr | `string` | n/a | yes |
| <a name="input_aks_name"></a> [aks\_name](#input\_aks\_name) | n/a | `string` | n/a | yes |
| <a name="input_aks_node_rg_name"></a> [aks\_node\_rg\_name](#input\_aks\_node\_rg\_name) | aks | `string` | n/a | yes |
| <a name="input_aks_node_size"></a> [aks\_node\_size](#input\_aks\_node\_size) | n/a | `string` | n/a | yes |
| <a name="input_aks_version"></a> [aks\_version](#input\_aks\_version) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | default | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acr_admin_password"></a> [acr\_admin\_password](#output\_acr\_admin\_password) | n/a |
| <a name="output_acr_admin_username"></a> [acr\_admin\_username](#output\_acr\_admin\_username) | n/a |
| <a name="output_acr_login_server"></a> [acr\_login\_server](#output\_acr\_login\_server) | acr |
| <a name="output_aks_ca_certificate"></a> [aks\_ca\_certificate](#output\_aks\_ca\_certificate) | n/a |
| <a name="output_aks_client_certificate"></a> [aks\_client\_certificate](#output\_aks\_client\_certificate) | n/a |
| <a name="output_aks_client_key"></a> [aks\_client\_key](#output\_aks\_client\_key) | n/a |
| <a name="output_aks_host"></a> [aks\_host](#output\_aks\_host) | aks |
<!-- END_TF_DOCS -->
