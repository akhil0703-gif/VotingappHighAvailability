variable "env" {
  description = "The environment name (e.g., dev, prod) used for resource naming."
  type        = string
}

variable "region" {
  description = "The GCP region where the Artifact Registry repository will be hosted."
  type        = string
}
