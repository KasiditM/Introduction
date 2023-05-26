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
-- WHERE fav = 'kla's dog' --> this wont work
-- Where fav = "kla's cat" --> this will work
-- create new column by AS
------------------------------------------------------------------------------------------
-- to insert existing data into database
-- insert into

insert into Customer_table.Customer_data
  (customer_id,name,address,city,state,zipcode,country)
values (2645, '333 SQL road', 'Jackson', 'MI', 49202, 'US')

-- update query for change some data in a row of data base from query above
-- address is wrong '333 SQL road' so change to '123 New address'
update Customer_table.Customer_data
set address = '123 New Address'
where customer_id = 2645
-- ex update
UPDATE
  cars.car_info
SET
  num_of_cylinders = "two"
WHERE
  num_of_cylinders = "tow";

-- create new table in database
-- create table if not exists 
-- clean the new table
-- drop table if exists

-- remove duplicate "DISTINCT"
SELECT distinct customer_id
FROM `analyst-project-373009.Customer_table.Customer_data`

-- Length "LEN" find number of string
select length(country) as letters_in_country
from `analyst-project-373009.Customer_table.Customer_data`
-- >
select country
from `analyst-project-373009.Customer_table.Customer_data`
where length(country) >2

-- substring "SUBSTR" substr(value,start from,how many)
select distinct customer_id
from `analyst-project-373009.Customer_table.Customer_data`
where substr(country,1,2) = "US"

-- Trim "TRIM" remove space
select state
from `analyst-project-373009.Customer_table.Customer_data`
where length(state) > 2
-- result turn into "OH " which is 3 letters
select distinct customer_id
from `analyst-project-373009.Customer_table.Customer_data`
where trim(state) = 'OH'

-- cast() convert anything from one data to another
-- order by -> desc // descending
-- change string to float
SELECT cast(purchase_price as float64) 
FROM `analyst-project-373009.customer_data.customer_purchase` 
order by cast(purchase_price as float64) desc

select date, purchase_price
from `analyst-project-373009.customer_data.customer_purchase`
where  date between '2020-12-1' and '2020-12-31'

select cast(date as date) as date_only, purchase_price
from `analyst-project-373009.customer_data.customer_purchase`
where  date between '2020-12-1' and '2020-12-31'

-- concat - add text string together to create new text strings
-- that can be use as unique keys
select concat(product_code, product_color) as new_product_code
from `analyst-project-373009.customer_data.customer_purchase`
where  product = 'couch'

-- coalese - can use to return non null variable in a list
-- product name is null so give a product code instead
select coalesce(product,product_code) as product_info
from `analyst-project-373009.customer_data.customer_purchase`