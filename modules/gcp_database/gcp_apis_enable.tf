resource "google_project_service" "default"{
  for_each = toset(local.enable_gcp_apis)

  project = var.project_id
  service = each.key
  disable_on_destroy = false
}
