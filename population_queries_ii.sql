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

-- Q6 - What country had the smallest population in 2007?
SELECT name, MIN(population) AS 'population in 2007'
FROM countries
JOIN population_years
  ON countries.id =
  population_years.country_id
WHERE year = 2007;

-- Q7 - What is the average population of Poland during the time period covered by this dataset?
SELECT name, AVG(population) AS 'average population'
FROM countries
JOIN population_years
  ON countries.id =
  population_years.country_id
WHERE name = 'Poland';

-- Q8 - How many countries have the word "The" in their name?
SELECT name
FROM countries
WHERE name LIKE '%The%';

-- Q9 - What was the total population of each continent in 2010?
SELECT continent, SUM(population) as 'Total population in 2010'
FROM countries
LEFT JOIN population_years
  ON countries.id =
  population_years.country_id
WHERE year = 2010
GROUP BY continent;
