SELECT 
	first_name || ' ' || last_name AS "Full Name", -- expression
FROM 
	actors
ORDER BY 
	first_name ASC,
	last_name DESC;

-- Preparando algumas coisinhas para o próximo ORDER BY, dizendo onde queremos a ordem de valores nulos
ALTER TABLE t_tags ADD COLUMN IF NOT EXISTS owner CHARACTER VARYING(50) NULL;

INSERT INTO
	t_tags (tag, owner)
VALUES
	('Sunset', 'God'),
	('Grudge', 'Human'),
	('Void', NULL)
ON CONFLICT (tag) DO NOTHING;

-- Vejamos que magnífico e limpo a ordenação dos nulos!
SELECT owner, tag FROM t_tags
	ORDER BY
		owner ASC
	NULLS FIRST;