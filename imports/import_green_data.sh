# Set these variables to your own database info
dbhost=""
dbname=""
dbuser=""
dbport=5432
schema2014="(vendorid, pickup_datetime, dropoff_datetime, store_and_fwd_flag, ratecodeid, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance, fare_amount, extra, mta_tax, tip_amount, tolls_amount, ehail_fee, total_amount, payment_type, trip_type, null_one, null_two)"
schema2015="(vendorid, pickup_datetime, dropoff_datetime, store_and_fwd_flag, ratecodeid, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance, fare_amount, extra, mta_tax, tip_amount, tolls_amount, ehail_fee, improvement_surcharge, total_amount, payment_type, trip_type, null_one, null_two)"

# For each file in the folder import it to the database
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-04.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-05.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-06.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-07.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-08.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-09.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-10.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-11.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2014 from 'green_data/green_tripdata_2014-12.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2015 from 'green_data/green_tripdata_2014-01.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2015 from 'green_data/green_tripdata_2014-02.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2015 from 'green_data/green_tripdata_2014-03.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2015 from 'green_data/green_tripdata_2014-04.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2015 from 'green_data/green_tripdata_2014-05.csv' with CSV HEADER delimiter ','"
psql -h $dbhost -d $dbname -U $dbuser -p $dbport -c "\copy green_rides $schema2015 from 'green_data/green_tripdata_2014-06.csv' with CSV HEADER delimiter ','"
