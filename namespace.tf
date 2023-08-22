resource "kubernetes_namespace" "alb" {
  metadata {
    name = var.k8s_namespace
  }
}
