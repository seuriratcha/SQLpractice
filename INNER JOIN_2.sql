-- "Asian Population"
-- https://www.hackerrank.com/challenges/asian-population/problem

/* query the sum of the populations of all cities where the CONTINENT is 'Asia' */
SELECT SUM(city.population)
FROM city
    INNER JOIN country on city.CountryCode = country.Code
WHERE country.continent = 'Asia'

----------------------------

-- "Average Population of Each Continent"
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
    
/* query the names of all the continents and their respective average city populations rounded down to the nearest integer.*/
SELECT country.Continent, FLOOR(AVG(city.Population))
FROM city
    INNER JOIN country ON city.CountryCode = country.Code
GROUP BY country.Continent

-- 소수점 버림 = FLOOR
