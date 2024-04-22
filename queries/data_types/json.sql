/*
1. PostgreSQL has built-in support for json including complete indexing support
2. JSON datatype is actually text under the hood
3. JSON datatype stores an exact copy of the input text (including indentations and whitespaces), which processing functions must reparse on each execution
4. JSONB is a binary version of the JSON datatype
5. JSONB is stored in a decomposed binary format. Slightly slower on inserting, much faster to process in queries.
6. JSONB also supports indexing!
7. Most applications should prefer to store JSON data as JSONB
*/

CREATE TABLE table_json (
	json JSON,
	jsonb JSONB
);

INSERT INTO table_json (JSON, JSONB) VALUES 
(
	'{"name":"Adam","age":20,"accomplishments":["Won math contest", "Has 9 children"]}',
	'{"name":"Mary","age":40,"accomplishments":["Won nobel prize"]}'
);

SELECT * FROM table_json;