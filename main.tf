module "network" {
  source = "./modules/network"
  env    = var.env
  region = var.region
}

module "artifact_registry" {
  source = "./modules/artifact_registry"
  env    = var.env
  region = var.region
}

module "cluster" {
  source       = "./modules/cluster"
  env          = var.env
  zone         = var.zone
  network_name = module.network.network_name
  subnet_name  = module.network.subnet_name
}
