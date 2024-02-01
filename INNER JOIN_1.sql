-- "African Cities"
-- https://www.hackerrank.com/challenges/african-cities/problem

SELECT city.name
FROM city
    INNER JOIN country ON city.CountryCode = country.Code
WHERE country.continent = 'Africa'

/*
2개 이상 테이블 JOIN 했을 때, 동일한 이름의 칼럼이 존재한다면 컬럼명 앞에 테이블 명 붙여줘야 함
'테이블명.name'
*/
