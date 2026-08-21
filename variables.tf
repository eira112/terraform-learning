variable "image_version" {
  default = "1.27"
}
variable "docker_password" {
  type      = string
  sensitive = true
}