terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  backend "gcs" {
    bucket = "testproject-488314-tfstate" # Ensure this bucket is created first
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
