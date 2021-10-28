# Install packages if missing
list.of.packages <- c("DBI", "odbc")
new.packages <- list.of.packages[!(
  list.of.packages %in% installed.packages()[,"Package"]
  )]
if(length(new.packages)){
  install.packages(new.packages)
}

# Checking that we have the driver "ODBC Driver 17 for SQL Server"
library(odbc)
sort(unique(odbcListDrivers()[[1]]))

# Connection
library(DBI)

con <- dbConnect(odbc::odbc(),
                 driver = "ODBC Driver 17 for SQL Server",
                 database = "",
                 uid = "",
                 pwd = "",
                 server = "XX.XXX.XX.XXX,1433"
                 )

# Dummy query with previous connection
dbGetQuery(con,'
  select *
  from dbo.my_table
  limit 100
')
