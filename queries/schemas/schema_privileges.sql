/*
By default, users cannot access any objects in schemas they do not own.
They cannot create objects in someone else's schema.

Two schema access levels rights:
- USAGE
- CREATE
*/
--

-- Grants access to schema (but still not the tables)
GRANT USAGE ON SCHEMA sales TO martin;

-- Grants acess to tables in schema
GRANT SELECT ON ALL TABLES IN SCHEMA sales TO martin;

-- Grants access for creating objects in schema (tables, etc)
GRANT CREATE ON SCHEMA sales TO martin;

