-- Composite types are created with CREATE TYPE syntax
-- Differently from CREATE TABLE command, only field names and types can be specified; no constraints (such as NOT NULL) 

CREATE TYPE address AS (
	city VARCHAR(50),
	country VARCHAR(20)
);

CREATE TABLE companies (
	comp_id SERIAL PRIMARY KEY,
	address address
);

--The ROW expression syntax can be used to construct composite values.
INSERT INTO companies(address) VALUES (ROW('SÃO PAULO', 'BR'));

-- And we can specify subfields as targets for INSERT, too:
INSERT INTO companies(address.country, address.city) VALUES ('NEW YORK', 'US');


-- Selecting value from some subfield:
SELECT (address).country FROM companies;

-- Updating value from subfield:
UPDATE companies SET address.country = 'BR';


