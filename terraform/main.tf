resource "google_storage_bucket" "example_bucket" {
  name     = "${var.project_id}-example-bucket"
  location = var.region
  storage_class = "STANDARD"
}