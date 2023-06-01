-- Temporary table
-- WITH - temptable
-- CREATE TABLE - Access for anyone to use the table
-- INTO
WITH trips_over_1_hr AS ( 
  SELECT *
  FROM `bigquery-public-data.new_york_citibike.citibike_trips`
  WHERE 
  tripduration >= 60 
  
  )
-- count how many trip are 1hr long
SELECT COUNT(*) AS cnt
FROM trips_over_1_hr
-- 
WITH longest_used_bike AS(
  SELECT 
    bikeid,
    SUM(duration_minutes) AS trips_duration
  FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
  GROUP BY
    bikeid
  ORDER BY
    trips_duration DESC

)
SELECT 
  trips.start_station_id,
  COUNT(*) AS trip_ct
FROM longest_used_bike AS longest
INNER JOIN
  `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS trips
  ON longest.bikeid = trips.bikeid
GROUP BY
  trips.start_station_id
ORDER BY
  trip_ct DESC

SELECT 
  trips.start_station_id,
  COUNT(*) AS trip_ct
INTO logest
FROM longest_used_bike

WITH longest_used_bike AS(
  SELECT 
    bikeid,
    SUM(duration_minutes) AS trips_duration
  FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
  GROUP BY
    bikeid
  ORDER BY
    trips_duration DESC

)
SELECT 
  trips.start_station_id,
  COUNT(*) AS trip_ct
FROM longest_used_bike AS longest
INNER JOIN
  `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS trips
  ON longest.bikeid = trips.bikeid
GROUP BY
  trips.start_station_id
ORDER BY
  trip_ct DESC