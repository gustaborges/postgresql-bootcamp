CREATE DOMAIN positive_numeric AS INT NOT NULL CHECK (VALUE > 0)

CREATE TABLE sample_domain (
	sample_id SERIAL PRIMARY KEY,
	value_num positive_numeric
);

INSERT INTO sample_domain (value_num) VALUES (-10); -- error
INSERT INTO sample_domain (value_num) VALUES (10); -- sucess

SELECT * FROM sample_domain;