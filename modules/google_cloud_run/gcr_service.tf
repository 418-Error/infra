resource google_cloud_run_service gcr_app_service {
    name = var.gcr_name
    location = var.gcp_region

    template {
        spec {
            containers {
                image = var.container_image
                ports {
                    container_port = var.container_port
                }

                dynamic "env" {
                    for_each = var.env
                    content {
                        name = env.value.name
                        value = env.value.value
                    }
                }
            }
        }
    }

    traffic {
      percent = 100
      latest_revision = true
    }
}

resource google_cloud_run_service_iam_policy noauth {
    location = var.gcp_region
    project = google_cloud_run_service.gcr_app_service.project
    service = google_cloud_run_service.gcr_app_service.name

    policy_data = data.google_iam_policy.noauth.policy_data
}