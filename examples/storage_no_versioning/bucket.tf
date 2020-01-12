module "storage" {
  source      = "../../"
  bucket_name = var.bucket_name
  project_id  = var.project_id
  labels = {
    "environment" = "test"
    "team"        = "devops"
  }
}
