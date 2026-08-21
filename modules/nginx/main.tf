terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}
resource "docker_image" "nginx" {
  name = "nginx:${var.image_version}"
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  provisioner "local-exec" {
    command = "echo Terraform created the container!"
  }
}