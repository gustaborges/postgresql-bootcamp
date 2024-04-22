CREATE TABLE table_decimal (
	decimal DECIMAL(3,2),-- 3=Precision, 2=Scale
	numeric NUMERIC(3,2) -- Pretty much the same as DECIMAL
);

-- When nor precision nor scale are informed, it goes up to the type's limit which is defined in documentation
-- Precision means the total digits of the number (considering everything, both left and right side of decimal point)
-- Scale means, hey, given the total digits defined by Precision, use N of them as decimal digits (right side of decimal points).

-- For example (3,2) accepts numbers from -9.99 to 9.99
INSERT INTO table_decimal (decimal, numeric) VALUES(-9.99, 9.99);
INSERT INTO table_decimal (decimal, numeric) VALUES(-9.999, 9.999); -- error
INSERT INTO table_decimal (decimal, numeric) VALUES(-10, 10); 		 -- error

SELECT * FROM table_decimal;