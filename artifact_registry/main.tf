resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "${var.env}-voting-app-repo"
  description   = "Docker repo"
  format        = "DOCKER"
}
