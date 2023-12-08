output gcr_service_data_output {
  value = {
    url = resource.google_cloud_run_service.gcr_app_service.status
  }
}