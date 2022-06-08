variable "bucket_name" {
  description = "Google Cloud Storage (GCS) bucket Name."
  type        = string
}

variable "project_id" {
  description = "GCS Project ID."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
  default     = "europe-west1"
}

variable "labels" {
  description = "Labels to assign on the GCS bucket."
  type        = map(any)
}
