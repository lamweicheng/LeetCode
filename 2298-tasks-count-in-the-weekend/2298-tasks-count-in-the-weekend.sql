# Write your MySQL query statement below
select SUM(WEEKDAY(submit_date) >= 5) as weekend_cnt,
SUM(WEEKDAY(submit_date) < 5) as working_cnt
from tasks;