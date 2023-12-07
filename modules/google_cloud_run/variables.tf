variable gcp_region {
  type = string
  description = "Region to pop gcr in"
}

variable container_port {
  type = number
  description = "Port to expose on container"
}

variable gcr_name {
  type = string
  description = "Name of gcr"
}

variable project_id {
  type = string
  description = "Project ID"
}

variable container_image {
  type = string
  description = "Container image to run"
}
