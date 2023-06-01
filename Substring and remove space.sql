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