CREATE TABLE table_float (
	real REAL,
	double DOUBLE PRECISION
);


INSERT INTO table_float (real, double) VALUES(1.123456, 1.123456789123456);
INSERT INTO table_float (real, double) VALUES(1.1234567, 1.12345678912345678); -- excess of decimal digits are rounded

SELECT * FROM table_float;
