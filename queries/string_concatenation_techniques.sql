-- Concatenate using pipe
SELECT 
	UPPER(last_name) || ', ' || first_name AS "Actor Name" 
FROM actors;

-- Concatenate function
SELECT 
	CONCAT(UPPER(last_name), ', ', first_name) AS "Actor Name" 
FROM actors;

-- Concatenate with Separator
-- It ignores null values when concatenating
SELECT 
	CONCAT_WS(', ', UPPER(last_name), first_name) AS "Actor Name" 
FROM actors;