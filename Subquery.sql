-- Subquery - small query inside larger query -> can be call outer select
-- inner query execute first
SELECT 
  station_id,
  num_bikes_available,
  (SELECT avg(num_bikes_available)
  FROM `bigquery-public-data.new_york_citibike.citibike_stations`) as avg_num_bike_ava
FROM `bigquery-public-data.new_york_citibike.citibike_stations`
--
SELECT
  station_id,
  name,
  number_of_rides AS number_of_rides_starting_at_station
FROM
  (
      SELECT
        start_station_id,
        COUNT(*) number_of_rides
      FROM `bigquery-public-data.new_york_citibike.citibike_trips`
      GROUP BY
        start_station_id
  )
  AS station_num_trips
  INNER JOIN
    `bigquery-public-data.new_york_citibike.citibike_stations` 
    ON station_id = start_station_id
--
SELECT 
  station_id,
  name
FROM
  `bigquery-public-data.new_york_citibike.citibike_stations`
WHERE 
  station_id IN
  (
    SELECT
      start_station_id
    FROM
      `bigquery-public-data.new_york_citibike.citibike_trips`
    WHERE
      usertype = 'Subscriber'
  )