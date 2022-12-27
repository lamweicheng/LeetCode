# Write your MySQL query statement below
select SUM(WEEKDAY(submit_date) >= 5) AS weekend_cnt, SUM(WEEKDAY(submit_date) < 5) AS working_cnt FROM tasks;