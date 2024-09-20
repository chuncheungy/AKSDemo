# acr
variable "acr_login_server" { type = string }
variable "acr_admin_username" { type = string }
variable "acr_admin_password" { type = string }

# build
variable "app_src_path" { type = string }
variable "image_name" { type = string }
variable "build_version" { type = string }