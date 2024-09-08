SELECT 
	MAX(revenues_domestic)
FROM movies_revenues;

SELECT 
	MIN(revenues_domestic)
FROM movies_revenues;

SELECT 
	MIN(movie_name) -- also work with strings, dates, etc.
FROM movies;