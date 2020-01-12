module "storage" {
  source            = "../../"
  bucket_name       = var.bucket_name
  project_id        = var.project_id
  labels            = var.labels
  enable_versioning = true
}
