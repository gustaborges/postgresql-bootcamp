-- The postgres built in schema pg_catalog is implicitly part of the search_path
-- It is the first schema that is looked upon

SHOW search_path;

-- It contains system table names, built-in types 
-- One can explicitly place pg_catalog at the end of the search path, so that user-defined names override built-in types.