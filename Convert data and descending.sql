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