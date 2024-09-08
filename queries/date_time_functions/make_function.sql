SELECT MAKE_DATE(2020, 12, 31);
SELECT MAKE_TIME(2, 14, 4.05); -- h, m, s
SELECT MAKE_TIMESTAMP(2020, 12, 31, 2, 14, 4.05); -- Y,M, D, m, s
SELECT MAKE_INTERVAL(1, 1, 0, 12, 23, 59, 59); -- years, months, weeks, days, hours, minutes, secondsSELECT MAKE_INTERVAL(1, 1, 0, 12, 23, 59, 59); -- years, months, weeks, days, hours, minutes, seconds
SELECT MAKE_INTERVAL(days => 65); -- using named notation