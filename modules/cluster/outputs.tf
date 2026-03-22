output "cluster_name" {
  description = "The name of the created GKE cluster."
  value       = google_container_cluster.primary.name
}
