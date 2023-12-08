variable project_id {
    type = map(string)
    description = "Project id"
}

variable gcp_region {
    type = string
    description = "Region to pop gcr in"
    default = "europe-west3"
}

# variable env_front{
#     type = list(object({
#         name = string
#         value = string
#     }))
# }

variable env_back {
    type = list(object({
        name = string
        value = string
    }))
}

variable database_name {
    type = string
    description = "Name of database"
    default = "418greendb"
}

