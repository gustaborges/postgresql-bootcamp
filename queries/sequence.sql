-- Default type of a sequence is BIGINT
CREATE SEQUENCE test_sequence AS INT; -- BIGINT, SMALLINT;
	

CREATE SEQUENCE test_sequence2 
	INCREMENT -1
	MINVALUE 0
	MAXVALUE 6000
	START WITH 5000;

-- Advance sequence and return new value
SELECT nextval('test_sequence');


-- Peek current value of the sequence
SELECT currval('test_sequence');
SELECT currval('test_sequence2');

-- Setting current value of the sequence
SELECT setval('test_sequence',1);

-- Restarting sequence (blocks usage of sequence while restarting it)
ALTER SEQUENCE test_sequence RESTART WITH 100;


