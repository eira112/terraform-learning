module "dev" {
  source         = "./modules/nginx"
  image_version  = "1.28"
  container_name = "nginx-dev"
}

module "staging" {
  source         = "./modules/nginx"
  image_version  = "1.28"
  container_name = "nginx-staging"
}