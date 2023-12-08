output gcsql_ip_output {
    value = {
        ip = resource.google_sql_database_instance.gcsql_instance.ip_address
    }
}

output gcsql_public_ip_output {
    value = {
        ip = resource.google_sql_database_instance.gcsql_instance.public_ip_address
    }
}

output gcsql_name_output {
    value = {
        name = resource.google_sql_database_instance.gcsql_instance.name
    }
}