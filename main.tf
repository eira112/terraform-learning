terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~>3.0"
    }
  }
}
provider "docker" {}
resource "docker_image" "nginx" {
  name = "nginx:${var.image_version}"
}
resource "docker_container" "nginx" {
  for_each = toset(["dev", "staging"])
  name     = "terraform-nginx-${each.key}"
  image    = docker_image.nginx.image_id

  provisioner "local-exec" {
    command = "echo Terraform created the container!"
  }
}
