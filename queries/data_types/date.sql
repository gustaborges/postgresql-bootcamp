CREATE TABLE table_datetime (
	date DATE,
	time TIME,
	timestamp TIMESTAMP,
	timestamp_tz TIMESTAMP WITH TIME ZONE, -- timestamptz
	interval INTERVAL
);

INSERT INTO table_datetime (date) VALUES('1999-01-01');
INSERT INTO table_datetime (time) VALUES('23:55:10.764');
INSERT INTO table_datetime (timestamp) VALUES('1999-01-01 23:55:10.764');
INSERT INTO table_datetime (timestamp_tz) VALUES('1999-01-01 23:55:10.764+03');

-- Interval
INSERT INTO table_datetime (interval) VALUES('1-2'); --SQL Standard 1year, 2 months
INSERT INTO table_datetime (interval) VALUES('36 23:59:59'); --SQL Standard 36d, 23h, 59m, 59s 
INSERT INTO table_datetime (interval) VALUES('1 year 2 months 5 minutes'); --Traditional postgres format 1 year 2 months 3 days 4 hours 5 minutes 6 seconds

SELECT * FROM table_datetime;

SELECT CURRENT_DATE;
SELECT CURRENT_TIME(3);
SELECT CURRENT_TIMESTAMP;
SELECT LOCALTIME;

SHOW TIMEZONE;
SET TIMEZONE='Etc/UTC';
SET TIMEZONE='America/New_York';