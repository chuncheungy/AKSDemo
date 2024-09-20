resource "null_resource" "this" {

  triggers = {
    build_version = var.build_version
  }

  provisioner "local-exec" {
    command = <<EOT
            docker login ${var.acr_login_server} -u ${var.acr_admin_username} -p ${var.acr_admin_password}
            docker build -t ${var.acr_login_server}/${var.image_name}:${var.build_version} ${var.app_src_path}
            docker push ${var.acr_login_server}/${var.image_name}:${var.build_version}
        EOT
  }
}