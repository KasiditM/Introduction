-- Aliasing - temporary name a table or column -> AS
-- COUNT - return the number of row in specific range
-- COUNT distinct - reuturn the distinct value in specific range
-- "how many" 

SELECT 
  warehouse.state as state,
  COUNT(DISTINCT order_id) as num_order
FROM 
  warehouse_order.orders as orders
LEFT JOIN
  warehouse_order.warehouse 
  ON orders.warehouse_id = warehouse.warehouse_id
GROUP BY
 warehouse.state