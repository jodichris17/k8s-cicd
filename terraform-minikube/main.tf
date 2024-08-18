provider "local" {
  version = "~> 2.0"
}

resource "null_resource" "minikube" {
  provisioner "local-exec" {
    command = <<EOT
      minikube start --driver=docker
    EOT
  }

  provisioner "local-exec" {
    when = destroy
    command = <<EOT
      minikube delete
    EOT
  }
}
