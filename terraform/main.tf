locals {
  config = yamldecode(file("./config.yaml"))
}

module "cgi_aks" {
  source           = "./modules/1_aks"
  rg_name          = local.config.default.rg_name
  location         = local.config.default.location
  acr_name         = local.config.acr.name
  aks_name         = local.config.aks.name
  aks_node_rg_name = local.config.aks.node_rg_name
  aks_version      = local.config.aks.version
  aks_node_size    = local.config.aks.node_size
}

module "build" {
  source             = "./modules/2_build"
  acr_login_server   = module.cgi_aks.acr_login_server
  acr_admin_username = module.cgi_aks.acr_admin_username
  acr_admin_password = module.cgi_aks.acr_admin_password
  app_src_path       = local.config.build.app_src_path
  image_name         = local.config.build.image_name
  build_version      = local.config.build.build_version
}

module "deploy" {
  source                   = "./modules/3_deploy"
  acr_login_server         = module.cgi_aks.acr_login_server
  image_name               = local.config.build.image_name
  build_version            = local.config.build.build_version
  namespace_name           = local.config.deploy.namespace_name
  cpu_request              = local.config.deploy.cpu_request
  memory_request_and_limit = local.config.deploy.memory_request_and_limit
  replicas                 = local.config.deploy.replicas
  port                     = local.config.deploy.port
  target_port              = local.config.deploy.target_port
  health_check_path        = local.config.deploy.health_check_path
  depends_on               = [module.build]
}

output "lb_ip" {
  value = module.deploy.lb_ip
}