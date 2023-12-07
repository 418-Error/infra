terraform {
    required_version = ">= 1.3"
    
  required_providers {
    google = ">= 3.3"
  }
}

provider "google" {
  project = var.project_id
}