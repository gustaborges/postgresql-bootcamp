SELECT	
	first_name
FROM directors
EXCEPT
SELECT
	first_name
FROM actors
ORDER BY first_name ASC

-- Because columns count and type matches, the select results can be merged.