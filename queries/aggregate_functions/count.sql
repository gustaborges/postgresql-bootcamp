-- replaces a matching string



SELECT 
	COUNT(CASE WHEN movie_lang = 'Japanese' THEN 1 END) 
FROM movies;

-- Same thing as above but with postgres special syntax.
SELECT 
	COUNT(*) FILTER (WHERE movie_lang = 'Japanese')
FROM movies;

SELECT 
	COUNT(DISTINCT(movie_lang))
FROM movies;

SELECT 
	COUNT(movie_lang) -- NULL value is not considered in count.
FROM movies;