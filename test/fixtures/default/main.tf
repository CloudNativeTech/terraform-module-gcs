
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
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
