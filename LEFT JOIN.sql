-- "Customer who never order"
-- https://leetcode.com/problems/customers-who-never-order/description/

/*find all customers who never order anything */
SELECT c.name as Customers
FROM Customers AS c
    LEFT JOIN Orders AS o ON C.id = O.customerid
WHERE o.id IS NULL
