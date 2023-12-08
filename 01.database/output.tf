output database_ip_output {
    value = {
        ip = module.databaseGCP.gcsql_ip_output.ip
    }
}

output database_public_ip_output {
    value = {
        ip = module.databaseGCP.gcsql_public_ip_output.ip
    }
}