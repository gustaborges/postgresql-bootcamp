-- Trimming characters from a string
-- By default TRIM trims space characters
-- Trims start of string
SELECT LTRIM('ABC  ');
SELECT TRIM(LEADING FROM '  ABC '); -- EQUIVALENT TO LTRIM()

-- Trims end of string
SELECT RTRIM('  ABC  ');
SELECT TRIM(TRAILING FROM ' ABC '); -- EQUIVALENT TO RTRIM()
SELECT TRIM(TRAILING 'y' FROM 'yummy'); -- returns yumm
SELECT RTRIM('yummy', 'y'); -- returns yumm

-- Trims start and end of string
SELECT BTRIM(' ABC ');
SELECT TRIM(BOTH FROM ' ABC '); -- EQUIVALENT TO BTRIM()
SELECT TRIM(' ABC '); -- EQUIVALENT TO TRIM(BOTH FROM ' ABC ')

