-- "African Cities"
-- https://www.hackerrank.com/challenges/african-cities/problem

SELECT city.name
FROM city
    INNER JOIN country ON city.CountryCode = country.Code
WHERE country.continent = 'Africa'

-- 2개 이상 테이블 JOIN 했을 때, 동일한 이름의 칼럼이 존재한다면 컬럼명 앞에 테이블 명 붙여줘야 함 '테이블명.name'

----------------------------
    
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
