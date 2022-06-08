output "bucket_name" {
  description = "GCS bucket name."
  value       = module.storage.name
}

output "bucket_self_link" {
  description = "URI of the GCS bucket."
  value       = module.storage.self_link
}

output "bucket_url" {
  description = "The base URL of the bucket, in the format gs://<bucket-name>"
  value       = module.storage.url
}
