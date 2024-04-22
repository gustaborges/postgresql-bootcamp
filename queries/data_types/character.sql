CREATE TABLE table_char (
	id SERIAL PRIMARY KEY,
	varchar_n VARCHAR(10) NULL, --  VARCHAR is an alias for CHARACTER VARYING(N)
	varchar VARCHAR NULL, --  VARCHAR is an alias for CHARACTER VARYING
	character_varying_n CHARACTER VARYING(10) NULL,
	character_varying CHARACTER VARYING NULL, -- variable unlimited length
	character_n CHARACTER(10) NULL, -- CHAR(n) is an alias for CHARACTER(n) 
	text TEXT NULL -- variable unlimited length
);

-- CHAR(n) or CHARACTER(n) always has size of N characters
-- if string is shorter, it is padded with spaces
-- there is no performance advantage of using this data type in PostgreSQL
-- it actually has higher computational cost.
-- In most situations text or character varying should be used instead.

INSERT INTO table_char(character_varying_n, character_n) VALUES ('01234', '01234');

SELECT '12345'::CHARACTER VARYING(10);
SELECT '12345'::VARCHAR(10); -- Same thing as above

SELECT '12345'::CHARACTER(10);
SELECT '12345'::CHAR(10); -- Same thing as above

SELECT '12345'::CHARACTER VARYING;
SELECT '12345'::TEXT; -- Almost same thing as above, except that TEXT is not SQL Standard

SELECT CAST('12345' AS TEXT); -- Another way of casting
