PREPARE usrrptplan (TEXT) AS
	select  company_name, contact_name, 'Customers' as Relationship 
	from Customers
	WHERE city = $1
	union
	select company_name, contact_name, 'Suppliers'
	from Suppliers
	WHERE city = $1;

EXECUTE usrrptplan('London');