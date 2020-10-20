use sql_store;
select  o.order_id, c.first_name, sh.name, os.name
-- , shipper, status,order_date,
from orders o -- order is the parent table
-- Below, Join or Left Join is same, As there must be a customer for each order
left join customers c
	on o.customer_id = c.customer_id
left join shippers sh
	on o.shipper_id = sh.shipper_id
join order_statuses os
	on os.order_status_id = o.status