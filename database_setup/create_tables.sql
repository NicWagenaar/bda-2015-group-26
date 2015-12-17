CREATE TABLE green_rides
(
  id serial primary key,
  vendorid smallint,
  pickup_datetime timestamp without time zone,
  dropoff_datetime timestamp without time zone,
  store_and_fwd_flag boolean,
  ratecodeid smallint,
  pickup_longitude numeric(20,17),
  pickup_latitude numeric(20,17),
  dropoff_longitude numeric(20,17),
  dropoff_latitude numeric(20,17),
  passenger_count smallint,
  trip_distance real,
  fare_amount real,
  extra real,
  mta_tax real,
  tip_amount real,
  tolls_amount real,
  ehail_fee real,
  improvement_surcharge real,
  total_amount real,
  payment_type smallint,
  trip_type smallint,
  null_one boolean,
  null_two boolean
);

CREATE TABLE uber_rides_2014
(
  id serial primary key,
  pickup_datetime timestamp without time zone,
  pickup_longitude numeric(8,5),
  pickup_latitude numeric(8,5),
  dispatch_base character varying(10)
);

CREATE TABLE zipcodes
(
  id serial primary key,
  zipcode character varying(24),
  borough character varying(64),
  po_name character varying(64)
);
SELECT AddGeometryColumn('zipcodes', 'polygon', 0, 'POLYGON', 2); -- 2-dimensional polygon with no specifc coordinate system

CREATE TABLE aggregated_rides
(
  id serial primary key,
  cab_type character varying(10),
  pickup_datetime timestamp without time zone
);
SELECT AddGeometryColumn('aggregated_rides', 'pickup_point', 0, 'POINT', 2); -- 2-dimensional point with no specifc coordinate system
