output "network_name" {
  description = "The name of the created VPC network."
  value       = google_compute_network.vpc.name
}

output "subnet_name" {
  description = "The name of the created subnetwork."
  value       = google_compute_subnetwork.subnet.name
}
