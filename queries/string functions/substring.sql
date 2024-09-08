-- Position of first ocurrence of a substring in a string
SELECT SUBSTRING('Postgres is amazing' from 10 for 20); -- returns "is amazing"

SELECT SUBSTRING('Postgres is amazing', 10, 20); -- another syntax for the same thing.
