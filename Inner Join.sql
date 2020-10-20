-- We wrote o.__ because these column are present on both table.
-- So we had to mention from which it should select column
SELECT o.product_id, name, quantity, o.unit_price 

-- Aliasing the table name so that we can call table with lessly typed
FROM order_items o   

-- Joining with the table of a different database 
-- We need to prefix those table which are not present in the current database
-- Inner keyword is optional
INNER JOIN sql_inventory.products p 

-- Condition of Joining
--	ON o.product_id = p.product_id
-- o.product_id = p.product_id under the hood of 2 different tables
-- Both the table must have the same named column
	USING(product_id)