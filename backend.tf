terraform {
  backend "gcs" {
    bucket = "testproject-488314_cloudbuild"
    prefix = "terraform/state/dev"
  }
}
