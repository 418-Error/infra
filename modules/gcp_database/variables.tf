variable database_name {
    type = string
    description = "Name of database"
}

variable project_id {
    type = string
    description = "Project id"
  
}

variable gcp_region {
    type = string
    description = "Region to pop gcr in"
}

variable config_database{
    type = map(string)
    description = "Config of database"
}