# Database script creation
```
  Average estimation of CO2 emissions per instance: 

 ------------------------------------------------------------------------------ ------- ---------- ------------------------ 
  resource                                                                       count   replicas   emissions per instance  
 ------------------------------------------------------------------------------ ------- ---------- ------------------------ 
  module.databaseGCP.google_sql_database_instance.gcsql_instance                 1       1           0.0035 gCO2eq/h        
  module.databaseGCP.google_project_service.default["sqladmin.googleapis.com"]                      unsupported             
  module.databaseGCP.google_sql_database.database                                                   unsupported             
 ------------------------------------------------------------------------------ ------- ---------- ------------------------ 
  Total                                                                          1                   0.0035 gCO2eq/h        
 ------------------------------------------------------------------------------ ------- ---------- ------------------------ 
```