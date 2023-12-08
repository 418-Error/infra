module "databaseGCP"{
    source = "../modules/gcp_database"
    database_name = var.database_name
    gcp_region = var.gcp_region
    project_id = var.project_id[terraform.workspace]
    config_database = var.config_database
}