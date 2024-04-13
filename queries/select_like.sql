SELECT * FROM actors WHERE first_name LIKE 'Jos_'; -- matches any single character
SELECT * FROM actors WHERE first_name LIKE '%se'; -- matches any character sequence

-- like with case insentitiveness
SELECT * FROM actors WHERE first_name ILIKE 'jos_';

