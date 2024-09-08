-- Position of first ocurrence of a substring in a string
SELECT POSITION('is' IN 'Postgres is amazing'); -- returns 10

SELECT STRPOS('Postgres is amazing','is'); -- returns 10

-- The difference is POSITION is ANSI SQL standard.