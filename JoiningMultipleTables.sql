use sql_invoicing;

-- Here Payments is the parent table which got the reference to all the tables
select p.payment_id, c.name, p.amount, pm.name
from payments p
join clients c
	on p.client_id = c.client_id
join payment_methods pm
	on pm.payment_method_id = p.payment_method