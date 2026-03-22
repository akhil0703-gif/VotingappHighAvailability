terraform {
  backend "gcs" {
    bucket = "gcpterraformstatebucket"
    prefix = "terraform/state/dev"
  }
}
