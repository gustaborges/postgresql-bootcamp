SELECT 
	mv.movie_id,
	mv.movie_name,
	d.first_name
FROM movies mv
INNER JOIN directors d
ON d.director_id = mv.director_id;

SELECT 
	mv.movie_id,
	mv.movie_name,
	d.first_name
FROM movies mv
INNER JOIN directors d
USING (director_id); -- because director_id is present in both tables

SELECT 
	mv.movie_id,
	mv.movie_name,
	d.first_name,
	r.revenues_domestic
FROM movies mv
INNER JOIN directors d USING (director_id)
INNER JOIN movies_revenues r USING (movie_id)
WHERE r.revenues_domestic > 100;