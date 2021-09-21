SELECT product_id, unit_price
FROM products
WHERE discontinued = 0 AND unit_price < 20
ORDER BY unit_price;