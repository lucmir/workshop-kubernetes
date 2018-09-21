provider "google" {
  project      = "your-project-name"
  region       = "southamerica-east1"
}

resource "google_container_cluster" "primary" {
  name               = "workshop-k8"
  zone               = "southamerica-east1-a"
  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-1"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
