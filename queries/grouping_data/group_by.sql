-- Group by separates rows into distinct groups
SELECT 
	movie_lang
FROM movies
GROUP BY movie_lang; -- Same as SELECT DISTINCT movie_lang FROM movies


-- For each distinct movie_lang calculates average max and min movie length
SELECT 
	movie_lang,
	AVG(movie_length),
	MIN(movie_length),
	MAX(movie_length)
FROM movies
GROUP BY movie_lang; 