INSERT INTO aggregated_rides (cab_type, pickup_datetime, pickup_point)
SELECT
  'green'::varchar(10) as cab_type,
  pickup_datetime,
  ST_Point(pickup_longitude, pickup_latitude)
FROM green_rides
WHERE pickup_datetime >= '2014-04-01 00:00:00' AND pickup_datetime <= '2014-09-30 23:59:59'; -- only the rides in the time frame for which we have uber rides

INSERT INTO aggregated_rides (cab_type, pickup_datetime, pickup_point)
SELECT
  'uber'::varchar(10) as cab_type,
  pickup_datetime,
  ST_Point(pickup_longitude, pickup_latitude)
FROM uber_rides_2014;
