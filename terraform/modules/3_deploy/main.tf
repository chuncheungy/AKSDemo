resource "kubernetes_namespace" "this" {
  metadata {
    name = var.namespace_name
  }
}
resource "kubernetes_deployment" "this" {
  metadata {
    name      = "${var.image_name}-deploy"
    namespace = kubernetes_namespace.this.metadata[0].name
    labels = {
      app = var.image_name
    }
  }
  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.image_name
      }
    }
    template {
      metadata {
        labels = {
          app = var.image_name
        }
      }
      spec {
        container {
          image = "${var.acr_login_server}/${var.image_name}:${var.build_version}"
          name  = var.image_name
          port {
            container_port = var.target_port
          }
          resources {
            limits = {
              memory = var.memory_request_and_limit
            }
            requests = {
              cpu    = var.cpu_request
              memory = var.memory_request_and_limit
            }
          }
          security_context {
            allow_privilege_escalation = false
            read_only_root_filesystem  = true
          }
          readiness_probe {
            http_get {
              path = var.health_check_path
              port = var.target_port
            }
          }
          liveness_probe {
            http_get {
              path = var.health_check_path
              port = var.target_port
            }
          }
        }
        automount_service_account_token = false

      }
    }
  }
}

resource "kubernetes_service" "this" {
  metadata {
    name      = "${var.image_name}-svc"
    namespace = kubernetes_namespace.this.metadata[0].name
  }
  spec {
    selector = {
      app = var.image_name
    }
    type = "LoadBalancer"
    port {
      port        = var.port
      target_port = var.target_port
    }
  }
}