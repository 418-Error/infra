variable project_id {
    type = map(string)
    description = "Project id"
}

variable gcp_region {
    type = string
    description = "Region to pop gcr in"
    default = "europe-west3"
}