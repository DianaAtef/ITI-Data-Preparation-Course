SELECT company_name, number_of_orders
FROM (SELECT customer_id, COUNT(customer_id) AS number_of_orders
FROM orders
GROUP BY customer_id) as d,customers
WHERE d.customer_id = customers.customer_id
ORDER BY company_name