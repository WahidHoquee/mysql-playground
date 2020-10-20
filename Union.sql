-- Merging two queries
-- The select column ammount must be equal
-- The column name of the output table is derived from the first SQL
Select first_name from customers
Union
Select comments from orders;