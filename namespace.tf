data "kubernetes_all_namespaces" "allns" {}

resource "kubernetes_namespace" "alb" {
  count = (contains(data.kubernetes_all_namespaces.allns.namespaces, var.k8s_namespace)) ? 0 : 1
  metadata {
    name = var.k8s_namespace
  }
}
