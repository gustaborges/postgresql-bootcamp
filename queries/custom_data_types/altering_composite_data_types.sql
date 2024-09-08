-- Composite types are created with CREATE TYPE syntax
-- Differently from CREATE TABLE command, only field names and types can be specified; no constraints (such as NOT NULL) 

CREATE TYPE address AS (
	city VARCHAR(50),
	country VARCHAR(20)
);

-- Rename type
ALTER TYPE address RENAME TO my_address;

-- Change owner of the type
ALTER TYPE address OWNER TO postgres;

-- Change the schema it belongs to
ALTER TYPE address SET SCHEMA mysecondschema;

-- Add new attribute
ALTER TYPE address ADD ATTRIBUTE street_address VARCHAR(150);



