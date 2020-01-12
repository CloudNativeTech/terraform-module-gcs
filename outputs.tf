output "name" {
  description = "GCS bucket name."
  value       = google_storage_bucket.bucket.name
}

output "self_link" {
  description = "URI of the GCS bucket."
  value       = google_storage_bucket.bucket.self_link
}

output "url" {
  description = "The base URL of the bucket, in the format gs://<bucket-name>"
  value       = google_storage_bucket.bucket.url
}
