resource "google_container_cluster" "primary" {
  name     = "${var.env}-voting-cluster"
  location = var.zone 
  network    = var.network_name
  subnetwork = var.subnet_name
  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = false
}

resource "google_container_node_pool" "spot_nodes" {
  name       = "${var.env}-spot-pool"
  location   = var.zone
  cluster    = google_container_cluster.primary.name
  node_count = 1
  node_config {
    spot         = true
    machine_type = "e2-small" 
    disk_type    = "pd-standard"
    disk_size_gb = 15
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
