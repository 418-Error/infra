module "frontGcrModule" {
    source = "../modules/google_cloud_run"
    gcp_region = var.gcp_region
    container_image = "test"
    container_port = 3000
    project_id = var.project_id[terraform.workspace]
    gcr_name = "front-418erreur"
}