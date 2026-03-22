variable "env" {
  description = "The environment name (e.g., dev, prod) used for resource naming."
  type        = string
}

variable "zone" {
  description = "The GCP zone where the GKE cluster will be deployed (Free Tier uses zonal)."
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network to attach the GKE cluster to."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnetwork to attach the GKE cluster nodes to."
  type        = string
}
