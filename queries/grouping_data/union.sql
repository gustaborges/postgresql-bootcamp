SELECT
	first_name,
	last_name,
	'directors' as "tablename"
FROM directors
UNION
SELECT
	gender,
	last_name,
	'actors' as "tablename"
FROM actors
ORDER BY first_name ASC

-- Because columns count and type matches, the select results can be merged.