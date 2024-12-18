module "aoai" {
  source              = "./modules/aoai"
  app_name            = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subdomain_name      = var.subdomain_name
}