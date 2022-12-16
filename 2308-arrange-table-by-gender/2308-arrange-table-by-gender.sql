# Write your MySQL query statement below
select user_id, gender from(
Select user_id, gender, Row_number() over(Partition by gender order by user_id) as n_rank
from Genders
order by n_rank, gender, user_id)a