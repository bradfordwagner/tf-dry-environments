provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_pod" "hello_world" {
  metadata {
    name = var.client
  }

  spec {
    container {
      image = "nginx:1.21.6"
      name  = "main"
    }
  }
}