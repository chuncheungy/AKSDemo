<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_admin_password"></a> [acr\_admin\_password](#input\_acr\_admin\_password) | n/a | `string` | n/a | yes |
| <a name="input_acr_admin_username"></a> [acr\_admin\_username](#input\_acr\_admin\_username) | n/a | `string` | n/a | yes |
| <a name="input_acr_login_server"></a> [acr\_login\_server](#input\_acr\_login\_server) | acr | `string` | n/a | yes |
| <a name="input_app_src_path"></a> [app\_src\_path](#input\_app\_src\_path) | build | `string` | n/a | yes |
| <a name="input_build_version"></a> [build\_version](#input\_build\_version) | n/a | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

### Notes
This module uses a `local-exec` provisioner to build and push the Docker image.
The provisioner invokes Bash via `/usr/bin/env bash` to ensure consistent
behaviour across macOS and Linux systems.
