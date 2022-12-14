# Write your MySQL query statement below

SELECT name AS Customers FROM Customers WHERE Customers.id NOT IN (SELECT customerID from Orders);

#SELECT Name AS Customers FROM Customers LEFT JOIN Orders  ON Customers.Id = Orders.CustomerId WHERE Orders.CustomerId IS NULL;
