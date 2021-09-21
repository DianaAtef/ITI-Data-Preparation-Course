SELECT company_name,order_id,order_date
FROM customers LEFT OUTER JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY company_name;