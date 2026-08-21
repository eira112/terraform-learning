output "container_names" {
  value = [
    module.dev.container_name,
    module.staging.container_name
  ]
}