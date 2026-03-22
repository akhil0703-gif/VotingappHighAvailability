variable "env" {
  description = "The environment name (e.g., dev, prod) used for resource naming."
  type        = string
}

variable "region" {
  description = "The GCP region where the VPC and subnets will be created."
  type        = string
}
