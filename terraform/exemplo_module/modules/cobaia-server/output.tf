output "cobaia-server" {
  value = google_compute_instance.cobaia_instance 
}

output "gcp_image" {
 value = data.google_compute_image.cobaia_image
}
