-- "Symmetric Pairs"
-- https://www.hackerrank.com/challenges/symmetric-pairs/problem

/* Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1. */
SELECT X, Y
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) = 2

UNION

SELECT f1.X, f1.Y
FROM Functions AS f1
    INNER JOIN Functions AS f2 ON f1.X = f2.Y AND f1.Y = f2.X
WHERE f1.X < f1.Y
ORDER BY X

-- UNION 후 테이블 결합 시 맨 마지막 절에 ORDER BY 붙여주면 됨
