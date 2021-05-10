resource "google_compute_firewall" "fw-allow-83306" {
  name    = format("allow-%s-%s", var.project, var.env)
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }

  source_ranges = ["0.0.0.0/0"]
}
