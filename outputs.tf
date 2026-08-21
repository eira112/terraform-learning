output "container_name" {
  value = values(docker_container.nginx)[*].name
}
output "docker_password" {
  value     = var.docker_password
  sensitive = true
}