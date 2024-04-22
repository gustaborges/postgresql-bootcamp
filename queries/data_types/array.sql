CREATE TABLE table_array (
	name VARCHAR(100),
	phones TEXT[]
);

INSERT INTO table_array (name, phones) VALUES ('Adam', ARRAY['999944444','999955555']);

SELECT * FROM table_array WHERE phones[1]='999944444';

SELECT * FROM table_array;