provider "google" {
  version = "~> 2.0"
}

module "storage" {
  source      = "../../.."
  bucket_name = var.bucket_name
  project_id  = var.project_id
  labels = {
    "environment" = "test"
    "team"        = "dev"
  }
}
