# Write your MySQL query statement below

select distinct title as TITLE
from TVProgram t
join content c on c.content_id = t.content_id
where c.Kids_content = 'Y' and c.content_type = 'Movies' and t.program_date between '2020-06-01' and '2020-06-30'