variable "gcp_project_id" {
  description = "The Google Cloud project ID."
  type        = string
}

variable "gcp_region" {
  description = "The Google Cloud region for resources."
  type        = string
  default     = "us-central1"
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)."
  type        = string
}
