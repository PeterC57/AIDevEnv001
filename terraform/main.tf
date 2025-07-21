resource "google_storage_bucket" "example_bucket" {
  name          = "${var.gcp_project_id}-bucket-${var.environment}"
  location      = var.gcp_region
  force_destroy = true

  uniform_bucket_level_access = true
}
