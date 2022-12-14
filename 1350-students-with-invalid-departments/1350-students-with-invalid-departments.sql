# Write your MySQL query statement below
SELECT id, name
FROM Students s
WHERE NOT EXISTS (
    SELECT id
    FROM Departments 
    WHERE id = s.department_id
)