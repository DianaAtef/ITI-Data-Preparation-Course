SELECT product_id, unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 25
ORDER BY unit_price;