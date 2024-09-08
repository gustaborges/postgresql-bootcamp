CREATE TYPE currency AS ENUM ('USD', 'EUR', 'GBP');

SELECT 'USD'::currency; -- Success
SELECT 'BLABLA'::currency; -- Error

-- Adding new value to enum
ALTER TYPE currency ADD VALUE 'CHF' AFTER 'EUR';

-- Update an enum value
ALTER TYPE currency RENAME VALUE 'CHF' TO 'BRA';

-- List enum values
SELECT enum_range(NULL::currency);

-- Create a type if not exists using PL/pgSQL
DO
$$
BEGIN
	IF NOT EXISTS(SELECT * FROM pg_type typ
						INNER JOIN pg_namespace nsp
						ON nsp.oid = typ.typnamespace 
						WHERE nsp.nspname = current_schema()
						AND typ.typname = 'currency') THEN
	
		CREATE TYPE currency AS ENUM ('USD', 'EUR', 'GBP');

	END IF;
END;
$$
LANGUAGE plpgsql; -- can be omitted cause it's the default



