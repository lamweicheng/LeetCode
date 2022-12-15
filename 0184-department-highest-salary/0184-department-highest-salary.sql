# Write your MySQL query statement below
SELECT d.Name AS Department, e.Name AS Employee, e.Salary FROM Employee AS e INNER JOIN Department AS d
ON e.DepartmentId = d.Id
INNER JOIN (SELECT MAX(Salary) AS Salary, DepartmentId
FROM Employee
GROUP BY DepartmentId
) t
on e.Salary = t.Salary
where e.DepartmentId = t.DepartmentId;