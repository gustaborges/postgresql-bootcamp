CREATE SEQUENCE table_integer_integerserial_seq AS INTEGER;

CREATE TABLE table_integer (
	id SERIAL PRIMARY KEY, -- the SERIAL translates do INTEGER data type + a SEQUENCE
	integerserial INTEGER NOT NULL DEFAULT nextval('table_numbers_integerserial_seq'), -- Just like this!
	smallserial SMALLSERIAL,
	bigserial BIGSERIAL, -- serial, bigserial, smallserial are simply notational conveniences!
	smallint SMALLINT NULL, -- 2 bytes (16 bits)
	integer INTEGER NULL, -- 4 bytes (32 bits)
	bigint BIGINT NULL -- 8 bytes (64 bits)
);


INSERT INTO table_integer
(
	smallint,
	integer,
	bigint
) 
VALUES 
(
	32767,
	2147483647,
	9223372036854775807
);

select * from table_integer;

