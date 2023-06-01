-- clean by sql
Select customer_id,
	case
		when first_name = 'Tnoy' then 'Tony'
		when first_name = 'Tmo' then 'Tom'
		else first_name
		end as cleaned_name
from customer_data.customer_name

