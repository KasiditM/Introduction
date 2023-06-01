-- Multiplier and sum in one code
-- Modulo returns the remainder of a division calculation
-- basic
SELECT 
	column_a,
	column_b,
	column_c,
	(column_a+column_b)*column_c AS column_x
FROM datatable

-- devided by 0 is uncalculatable
-- <> = inequal
SELECT 
  Date,
  region,
  Small_Bags,
  Total_Bags,
  (Small_Bags / Total_Bags)*100
  AS Small_bag_percent
FROM `analyst-project-373009.avocado_data.avocado_prices` 
WHERE Total_Bags <> 0

-- group by
-- order by
-- EXTRACT - to extract a part from a given date.
-- The EXTRACT command can extract any part from a date/time value.

select
  EXTRACT(YEAR FROM STARTTIME) AS year,
  COUNT(*) AS number_of_ride
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
GROUP BY
  year
ORDER BY
  year