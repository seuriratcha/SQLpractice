-- "Asian Population"
-- https://www.hackerrank.com/challenges/asian-population/problem

SELECT SUM(city.population)
FROM city
    INNER JOIN country on city.CountryCode = country.Code
WHERE country.continent = 'Asia'
