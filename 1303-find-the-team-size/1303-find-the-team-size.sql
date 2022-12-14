# Write your MySQL query statement below

SELECT a.employee_id, b.team_size FROM Employee AS a INNER JOIN (SELECT team_id, COUNT(team_id) AS team_size FROM Employee GROUP BY team_id) b ON a.team_id = b.team_id