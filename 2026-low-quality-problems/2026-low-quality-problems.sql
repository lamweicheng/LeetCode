# Write your MySQL query statement below
SELECT problem_id
FROM problems
WHERE (likes * 100 / (likes + dislikes)) < 60
ORDER BY problem_id ASC;