<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>4.2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~>2.32.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_build"></a> [build](#module\_build) | ./modules/2_build | n/a |
| <a name="module_cgi_aks"></a> [cgi\_aks](#module\_cgi\_aks) | ./modules/1_aks | n/a |
| <a name="module_deploy"></a> [deploy](#module\_deploy) | ./modules/3_deploy | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_ip"></a> [lb\_ip](#output\_lb\_ip) | n/a |
<!-- END_TF_DOCS -->
