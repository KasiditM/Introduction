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