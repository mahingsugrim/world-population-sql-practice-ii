-- Q3 - How many entries in the database are from Africa?
SELECT COUNT(*) AS 'number of African countries'
FROM countries
WHERE continent = 'Africa';

-- Q4 - What was the total population of Oceania in 2005?
SELECT SUM(population) AS 'Total Oceania population in 2005'
FROM countries
LEFT JOIN population_years
  ON countries.id =
  population_years.country_id
WHERE continent = 'Oceania' AND year = 2005;

-- Q5 - What is the average population of countries in South America in 2003?
SELECT AVG(population) AS 'Average South American population in 2003'
FROM countries
LEFT JOIN population_years
  ON countries.id =
  population_years.country_id
WHERE continent = 'South America' AND year = 2003;
