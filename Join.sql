-- Join - combine row from 2 or more tables based on a related column
-- inner left right outer
-- inner join - return what both are mathcing
-- left join - return what left table matching record from right table
-- right join - return what right table matching record from left table
-- full outer join - combine RIGHT and LEFT JOIN functionality to return matching records from either table
-- ON in SQL identifies how the tables are to be matched for the correct information to be combined from both
SELECT employee.name as employee_name,
  employee.role as employee_role,
  department.name as department_name
FROM 
  Employee_data.employee
INNER JOIN
  Employee_data.department ON
employee.department_id = department.department_id
--
SELECT
 seasons.market AS university,
 seasons.name AS team_name,
 seasons.wins,
 seasons.losses,
 seasons.ties,
 mascots.mascot AS team_mascot
FROM
 `bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons` AS seasons
INNER JOIN
 `bigquery-public-data.ncaa_basketball.mascots` AS mascots
ON
 seasons.team_id = mascots.id
WHERE
 seasons.season = 1984
 AND seasons.division = 1
ORDER BY
 seasons.market
--
SELECT 
  orders.*,
  warehouse.warehouse_alias as alias,
  warehouse.state as state
FROM 
  warehouse_order.orders AS orders
LEFT JOIN
  warehouse_order.warehouse 
  ON orders.warehouse_id = warehouse.warehouse_id