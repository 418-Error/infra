terraform {
  backend "gcs" {
    bucket = "kaliop-sandbox-terraform-tfstate"
    prefix = "terraform/418green"
  }
}