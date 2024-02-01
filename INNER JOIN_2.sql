-- "Asian Population"
-- https://www.hackerrank.com/challenges/asian-population/problem

/* query the sum of the populations of all cities where the CONTINENT is 'Asia' */
SELECT SUM(city.population)
FROM city
    INNER JOIN country on city.CountryCode = country.Code
WHERE country.continent = 'Asia'
