--age(timestamp, timestamp)	- Returns an interval of the substracted arguments
SELECT age('2020-01-01', '2019-10-01');

SELECT age(CURRENT_DATE, '2000-06-22');
