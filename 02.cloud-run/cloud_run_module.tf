module "backGcrModule" {
    source = "../modules/google_cloud_run"
    gcp_region = var.gcp_region
    container_image = "milou666/418green-back:ci"
    container_port = 3000
    project_id = var.project_id[terraform.workspace]
    gcr_name = "back-418green"
    env = var.env_back

}