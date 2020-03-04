-- Q3 - How many entries in the database are from Africa?
SELECT COUNT(*) AS 'number of African countries'
FROM countries
WHERE continent = 'Africa';

