CREATE TABLE table_boolean (
	product_id SERIAL PRIMARY KEY,
	is_available BOOLEAN NOT NULL
);

INSERT INTO table_boolean (is_available) VALUES (TRUE);
INSERT INTO table_boolean (is_available) VALUES (FALSE);

INSERT INTO table_boolean (is_available) VALUES ('yes');
INSERT INTO table_boolean (is_available) VALUES ('no');

INSERT INTO table_boolean (is_available) VALUES ('y');
INSERT INTO table_boolean (is_available) VALUES ('n');

INSERT INTO table_boolean (is_available) VALUES ('true');
INSERT INTO table_boolean (is_available) VALUES ('false');

INSERT INTO table_boolean (is_available) VALUES ('t');
INSERT INTO table_boolean (is_available) VALUES ('f');

INSERT INTO table_boolean (is_available) VALUES ('1');
INSERT INTO table_boolean (is_available) VALUES ('0');


SELECT * FROM table_boolean WHERE is_available = '1';
SELECT * FROM table_boolean WHERE is_available = 'n';