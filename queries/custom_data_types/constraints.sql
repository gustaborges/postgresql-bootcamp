CREATE TABLE mytable(
	id SERIAL PRIMARY KEY,
	mycolumn VARCHAR(100)
);

-- Adding not null constraint
ALTER TABLE mytable
	ALTER COLUMN mycolumn SET NOT NULL;

-- Adding default constraint
ALTER TABLE mytable
	ALTER COLUMN mycolumn SET DEFAULT 'Something';

-- Adding unique constraint
ALTER TABLE mytable
	ADD CONSTRAINT mycolumn_unique_constraint UNIQUE(mycolumn);

-- Adding primary key
ALTER TABLE mytable
	ADD CONSTRAINT mycolumn_pk PRIMARY KEY(mycolumn);

-- Dropping constraint
ALTER TABLE mytable
	DROP CONSTRAINT mycolumn_pk;

-- Create table with FK Constraint
CREATE TABLE mysecondtable(
	mycolumn VARCHAR(100),
	other_table_id INT NULL,
	FOREIGN KEY (other_table_id) REFERENCES mytable(id)
);

-- Adding foreign key
ALTER TABLE mytable
	ADD CONSTRAINT mycolumn_fk FOREIGN KEY (other_table_id) REFERENCES mytable(id)

-- CREATING TABLE WITH CHECK CONSTRAINT
CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birth_date DATE CHECK(birth_date > '1900-01-01'),
	joined_date DATE CHECK(joined_date > birth_date),
	salary NUMERIC CHECK (salary > 0)
);

-- Adding check constraint
ALTER TABLE staff
	ADD CONSTRAINT staff_name_check
	CHECK (LENGTH(name) > 1 AND name <> 'some forbidden name');

