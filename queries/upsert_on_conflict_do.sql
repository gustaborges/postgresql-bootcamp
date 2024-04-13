create table t_tags
(
	id SERIAL PRIMARY KEY,
	tag TEXT UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()
);

INSERT INTO t_tags (tag) VALUES
('Pen'),
('Pencil');

SELECT * FROM t_tags;

-- Se existe algum outro registro com a coluna 'tag'='Pen', não faça nada
insert into t_tags (tag)
values ('Pen')
on conflict (tag) do nothing;

-- Se existe algum outro registro com a coluna 'tag'='Pen', atualize este registro
INSERT INTO t_tags (tag)
VALUES ('Pen')
ON CONFLICT (tag) DO UPDATE SET
	tag = EXCLUDED.tag, -- excluded acessa as colunas do registro que não foi inserido, por ter ocorrido conflito
	update_date = NOW();




 