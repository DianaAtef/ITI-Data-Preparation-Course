SELECT category_name, company_name
FROM products,categories, suppliers
WHERE products.category_id = categories.category_id 
AND products.supplier_id = suppliers.supplier_id
ORDER BY category_name;