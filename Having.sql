-- HAVING - allows you to add a filter to your query 
-- instead of the underlying table 
-- when you're working with aggregate functions
-- CASE - returns records with your conditions 
-- by allowing you to include if/then statements in your query
SELECT  
  warehouse.warehouse_id,
  CONCAT(warehouse.state, ': ', warehouse.warehouse_alias) AS warehouse_name,
  COUNT(orders.order_id) AS number_of_order,
  (
    SELECT
      COUNT(*)
    FROM
      warehouse_order.orders AS orders
  ) AS total_orders,
  CASE 
    WHEN
      COUNT(orders.order_id) / (
        SELECT COUNT(*)
        FROM warehouse_order.orders AS orders
        ) <= 0.20
    THEN
      "Fullfilled 20% of total orders"
    WHEN
      COUNT(orders.order_id) / (
        SELECT COUNT(*)
        FROM warehouse_order.orders AS orders
        ) > 0.20
    AND
      COUNT(orders.order_id) / (
        SELECT COUNT(*)
        FROM warehouse_order.orders AS orders
        ) <= 0.60
    THEN
      "Fullfilled 21-60% of orders"
    ELSE
      "Fullfilled than 60% of orders"
    END AS fullfillment_summary

FROM 
  warehouse_order.warehouse AS warehouse
LEFT JOIN 
  warehouse_order.orders AS orders 
  ON
  orders.warehouse_id = warehouse.warehouse_id
GROUP BY
  warehouse.warehouse_id,
  warehouse_name
HAVING 
  COUNT(orders.order_id) > 0