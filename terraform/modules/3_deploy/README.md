<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_namespace.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_service.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_login_server"></a> [acr\_login\_server](#input\_acr\_login\_server) | acr | `string` | n/a | yes |
| <a name="input_build_version"></a> [build\_version](#input\_build\_version) | n/a | `string` | n/a | yes |
| <a name="input_cpu_request"></a> [cpu\_request](#input\_cpu\_request) | n/a | `string` | n/a | yes |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | n/a | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | deploy | `string` | n/a | yes |
| <a name="input_memory_request_and_limit"></a> [memory\_request\_and\_limit](#input\_memory\_request\_and\_limit) | n/a | `string` | n/a | yes |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | n/a | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | `number` | n/a | yes |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | n/a | `number` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | n/a | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_ip"></a> [lb\_ip](#output\_lb\_ip) | n/a |
<!-- END_TF_DOCS -->