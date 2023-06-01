-- concat - add text string together to create new text strings
-- that can be use as unique keys
select concat(product_code, product_color) as new_product_code
from `analyst-project-373009.customer_data.customer_purchase`
where  product = 'couch'

-- coalese - can use to return non null variable in a list
-- product name is null so give a product code instead
select coalesce(product,product_code) as product_info
from `analyst-project-373009.customer_data.customer_purchase`