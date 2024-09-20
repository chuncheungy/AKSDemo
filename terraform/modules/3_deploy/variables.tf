# acr
variable "acr_login_server" { type = string }

# deploy
variable "image_name" { type = string }
variable "build_version" { type = string }
variable "namespace_name" { type = string }
variable "replicas" { type = number }
variable "cpu_request" { type = string }
variable "memory_request_and_limit" { type = string }
variable "port" { type = number }
variable "target_port" { type = number }
variable "health_check_path" { type = string }