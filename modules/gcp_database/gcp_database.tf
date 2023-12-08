resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.gcsql_instance.name
}

resource "google_sql_database_instance" "gcsql_instance" {
  name             = "my-database-instance"
  region           = var.gcp_region
  database_version = "POSTGRES_15"
  
  settings {
    tier = "db-custom-2-7680"
    password_validation_policy {
      min_length                  = 6
      reuse_interval              = 2
      complexity                  = "COMPLEXITY_DEFAULT"
      disallow_username_substring = true
      password_change_interval    = "30s"
      enable_password_policy      = true
    }
  }
  # set `deletion_protection` to true, will ensure that one cannot accidentally delete this instance by
  # use of Terraform whereas `deletion_protection_enabled` flag protects this instance at the GCP level.
  deletion_protection = false
  root_password = var.config_database["root_password"]

}