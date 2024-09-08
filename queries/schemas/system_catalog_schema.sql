/*
Each database contains a pg_catalog schema, which contains 
the system tables and all the built-in data types, functions, 
and operators.
If it is not named explicitly in the path then it is implicitly
searched before searching the path's schemas. This ensures that 
built-in names will always be findable. 

However, you can explicitly place pg_catalog at the end of your 
search path if you prefer to have user-defined names override 
built-in names.
*/


