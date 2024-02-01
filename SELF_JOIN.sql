-- "181. Employees Earning More Than Their Managers"
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/

/* Write a solution to find the employees who earn more than their managers.*/
SELECT Employee.Name AS Employee
FROM Employee
    INNER JOIN Employee AS Manager ON Employee.managerid = Manager.id 
WHERE Employee.Salary > Manager.Salary

-- INNER JOIN절에서 기존 employee 테이블을 "Manager"로 생성하고 Key값을 입력함



-- "197. Rising Temperature"
-- https://leetcode.com/problems/rising-temperature/

/* Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday). */
SELECT today.id
FROM Weather AS today   
    INNER JOIN Weather AS yesterday ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
WHERE today.temperature > yesterday.temperature

-- whether table을 today, yesterday로 지정
-- 'recordDate' 날짜 컬럼 이용하여 key값 연결
