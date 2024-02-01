-- "Type of Triangle"
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

/* Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. */
SELECT CASE 
  WHEN A = B AND B = C THEN 'Equilateral'
  WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
  WHEN A = B OR B = C OR A = C THEN 'Isosceles'
  ELSE 'Scalene'
  END
FROM triangles

-- WHEN 절은 순서 중요함, 위에서부터 실행되기 때문에 중복 조건 있으면 원하는 값 잘못 출력될 수 있음
-- 이등변삼각형과 정삼각형 혼동 없도록 위에서부터 정삼각형 > 삼각형 아닌 것 > 이등변삼각형 순서로 쿼리 작성
