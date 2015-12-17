CREATE TABLE zipcodes_by_cab_type AS
SELECT
  z.zipcode,
  a.cab_type,
  count(distinct a.id)
FROM zipcodes z, aggregated_trips_2014 a
WHERE ST_Contains(z.polygon, a.pickup_point)
GROUP BY z.zipcode, a.cab_type;

CREATE TABLE zipcodes_by_cab_type_by_week AS
SELECT
  z.zipcode,
  a.cab_type,
  to_char(date_trunc('week', a.pickup_datetime), 'IW') AS pickup_week,
  count(distinct a.id)
FROM zipcodes z, aggregated_trips_2014 a
WHERE ST_Contains(z.polygon, a.pickup_point)
GROUP BY z.zipcode, a.cab_type, pickup_week;

CREATE TABLE zipcodes_by_cab_type_by_hour_of_day AS
SELECT
  z.zipcode,
  a.cab_type,
  date_part('hour', a.pickup_datetime) AS pickup_hour,
  count(distinct a.id)
FROM zipcodes z, aggregated_trips_2014 a
WHERE ST_Contains(z.polygon, a.pickup_point)
GROUP BY z.zipcode, a.cab_type, pickup_hour;

CREATE TABLE zipcodes_by_cab_type_by_week_part AS
SELECT
  z.zipcode,
  a.cab_type,
  CASE
    WHEN
      (date_part('isodow', a.pickup_datetime) BETWEEN 1 AND 4) -- Monday through Thursday
      OR
      (date_part('isodow', a.pickup_datetime) = 5 AND date_part('hour', a.pickup_datetime) < 18) -- Friday before 18:00
    THEN
      'Weekday'
    ELSE
      'Weekend'
  END AS part_of_week,
  count(distinct a.id)
FROM zipcodes z, aggregated_trips_2014 a
WHERE ST_Contains(z.polygon, a.pickup_point)
GROUP BY z.zipcode, a.cab_type, part_of_week;
