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