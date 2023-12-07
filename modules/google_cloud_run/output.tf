output gcr_service_data_output {
  value = {
    url = google_cloud_run_service.gcr_app_service.status
  }
}
