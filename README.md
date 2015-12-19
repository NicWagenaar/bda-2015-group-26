# General info
This repository holds the source code for the semester project of group 26 for the course Big Data Analytics at Copenhagen Business School.


# Instructions
### Dependencies
- PostgreSQL with the PostGIS extension installed
- PSQL command line interface
- Ruby with the 'pg' gem installed
- A Unix based operating system to run the shell scripts

### Getting started
- Clone, fork or download this repository.
- Set up a Postgres database and install the PostGIS extension.
Then set the database variables in `imports/zipcode_importer.rb`, `import_green_data.sh` and `import_uber_data.sh` to be able to connect to your database.
- Create the database schema by running `database_setup/create_tables.sql`.
- Download the datasets by running `imports/download_green_data.sh` and `imports/download_uber_data.sh`.
This creates `imports/green_data` and `imports/uber_data` directories.
- Import the Green Taxi and Uber data to your database by running `imports/import_green_data.sh` and `imports/import_uber_data`.
- Import the zip code polygons by running `imports/zipcode_importer.rb`.
- To complete the setup, run `database_setup/combine_rides.sql` to populate the aggregated rides table that holds both Green and Uber rides in a normalised format.

### Analysis
- Run `analysis/create_aggregate_tables.sql` to aggregate and group ride counts by a number of variables. Refer to the file for more details.
- The `exports` directory holds the resulting data from these tables in four CSV files.


# Sources
#### NYC zip codes
[NYC Prepared - NYC Zip Code Tabulation Areas](http://data.nycprepared.org/dataset/nyc-zip-code-tabulation-areas)

#### Green taxis ride data
[NYC Taxi & Limousine Commission - Trip Record Data](http://www.nyc.gov/html/tlc/html/about/trip_record_data.shtml)

#### Uber ride data
[FiveThirtyEight - Uber TLC Foil Response](https://github.com/fivethirtyeight/uber-tlc-foil-response)
