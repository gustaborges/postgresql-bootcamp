SELECT * FROM movies 
	ORDER BY movie_id 
	OFFSET 4
	LIMIT 5;

-- This is the Standard SQL way of offsetting and limiting:
SELECT * FROM movies 
	ORDER BY movie_id 
	OFFSET 4 ROWS
	FETCH NEXT 5 ROWS ONLY; -- or FETCH FIRST 5 ROWS ONLY

SELECT * FROM movies 
	ORDER BY movie_id 
	FETCH FIRST 1 ROW ONLY;