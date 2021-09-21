CREATE OR REPLACE FUNCTION get_city(
    a VARCHAR) 
RETURNS TABLE (Customers VARCHAR,
			   Suppliers VARCHAR,
			   Relationship TEXT) AS $$
BEGIN
	RETURN QUERY
    select  company_name, contact_name, 'Customers' as Relationship 
	from Customers
	WHERE city = a
	union
	select company_name, contact_name, 'Suppliers'
	from Suppliers
	WHERE city = a;
END; $$
LANGUAGE plpgsql;
SELECT  get_city('London');