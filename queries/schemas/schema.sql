CREATE SCHEMA sales;
CREATE SCHEMA humanresources;

ALTER SCHEMA hr RENAME TO programming;
	
DROP SCHEMA programming;

-- Accessing table from particular schemas
SELECT * FROM humanresources.employees;
SELECT * FROM public.employees; -- public is the default if ommited
SELECT current_schema(); -- here we see that public is the current schema.
SHOW search_path;

-- We can add more schemas to the search path, so that we don't have to fully qualify it
SET search_path TO '$user', humanresources, sales, public;

-- Move table to another schema
ALTER TABLE hr.employees SET SCHEMA humanresources;