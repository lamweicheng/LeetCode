# Write your MySQL query statement below

# SELECT E.name, B.bonus FROM Employee AS E left join Bonus as B ON E.empId = B.empId WHERE B.bonus < 1000 or B.bonus IS NULL;

SELECT
    Employee.name, Bonus.bonus FROM 
    Employee
        LEFT JOIN
    Bonus 
        ON 
            Employee.empid = Bonus.empid
        WHERE
    bonus < 1000 OR bonus IS NULL
;

