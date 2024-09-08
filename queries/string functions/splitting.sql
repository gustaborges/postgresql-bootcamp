-- Taking first or last N characters
SELECT LEFT('ABCD', 1); -- returns A
SELECT LEFT('ABCD', 2); -- returns AB
SELECT LEFT('ABCD', -1); -- returns ABC

SELECT RIGHT('ABCD', 2); -- returns CD
SELECT RIGHT('ABCD',-1); -- returns BCD

-- Splitting a string

SELECT split_part('AB|CD', '|', 1); -- returns AB
SELECT split_part('AB|CD', '|', 2); -- returns CD
