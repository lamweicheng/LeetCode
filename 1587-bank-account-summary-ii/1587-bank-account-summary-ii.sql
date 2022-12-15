# Write your MySQL query statement below

SELECT u.name,  sum(t.amount) AS balance FROM Users AS U LEFT JOIN Transactions AS T ON U.account = T.account GROUP BY T.account HAVING balance > 10000