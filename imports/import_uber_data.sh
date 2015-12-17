# Set these variables to your own database info
dbhost=""
dbname=""
dbuser=""
dbport=5432
schema="(pickup_datetime, pickup_latitude, pickup_longitude, dispatch_base)"

# For each file in the folder import it to the database
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy uber_rides_2014 $schema from 'uber_data/uber-raw-data-apr14.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy uber_rides_2014 $schema from 'uber_data/uber-raw-data-may14.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy uber_rides_2014 $schema from 'uber_data/uber-raw-data-jun14.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy uber_rides_2014 $schema from 'uber_data/uber-raw-data-jul14.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy uber_rides_2014 $schema from 'uber_data/uber-raw-data-aug14.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy uber_rides_2014 $schema from 'uber_data/uber-raw-data-sep14.csv' with CSV HEADER delimiter ','"
