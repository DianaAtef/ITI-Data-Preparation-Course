SELECT product_name,unit_price
FROM products
WHERE (unit_price = (SELECT MAX(unit_price)FROM products)
	  OR unit_price = (SELECT MIN(unit_price)FROM products));