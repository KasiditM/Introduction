SELECT *
FROM 'bigquery-public-data.sunroof_solar.solar_potential_by_postal_code'
WHERE state_name = 'Pennsylvania'

-- data city_data .csv in ur mac
SELECT *
FROM city_data.cities
WHERE avg_temp between 45 and 65  
  and avg_commute < 60
	and happiness_ranking <= 15

-- comma in comma wont work  ex.
-- WHERE fav = 'Rome's dog' --> this wont work
-- Where fav = "Rome's cat" --> this will work
-- create new column by AS
