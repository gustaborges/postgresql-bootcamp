-- Implicit cast done by postgresql
SELECT * FROM movies WHERE movie_id = '1';

-- Explicit casts
SELECT INTEGER '1';
SELECT * FROM movies WHERE movie_id = INTEGER '1';
	
SELECT '1'::INTEGER;
SELECT * FROM movies WHERE movie_id = '1'::INTEGER;

-- Explicit cast with CAST operator
-- CAST(expression as target_data_type)
-- expression can be column name, constant or an expression

SELECT CAST('1' AS INTEGER);
SELECT * FROM movies WHERE movie_id = CAST('1' AS INTEGER);

SELECT 
	CAST('t' AS BOOLEAN), 
	CAST('F' AS BOOLEAN);