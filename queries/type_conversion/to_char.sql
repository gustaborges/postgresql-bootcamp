
-- Converting integers to char applying a mask
SELECT TO_CHAR(100870, '9,99999');


-- Converting datetimes to char
SELECT 
	release_date,
	TO_CHAR(release_date, 'DD-MM-YYYY'),
	TO_CHAR(release_date, 'Dy, MM, YYYY')
FROM movies;

-- Adding currency symbol
SELECT 
	revenues_domestic,
	TO_CHAR(revenues_domestic, '$9999999D99')
FROM movies_revenues;
