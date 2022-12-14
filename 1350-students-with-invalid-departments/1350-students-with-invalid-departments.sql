# Write your MySQL query statement below
SELECT id, sname AS name
FROM (
    SELECT s.id, s.name AS sname, d.name AS dname
FROM Students s
LEFT JOIN Departments d
ON s.department_id = d.id
) AS ljt
WHERE dname IS NULL