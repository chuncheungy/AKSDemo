output "lb_ip" {
  value = kubernetes_service.this.status.0.load_balancer.0.ingress.0.ip
}