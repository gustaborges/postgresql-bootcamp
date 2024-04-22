CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
select uuid_generate_v1();

CREATE TABLE table_uuid (
	uuid_v1 UUID DEFAULT uuid_generate_v1(),
	uuid_v2 UUID DEFAULT uuid_generate_v4()
);

SELECT * FROM table_uuid;
INSERT INTO table_uuid (uuid_v1) VALUES (DEFAULT);