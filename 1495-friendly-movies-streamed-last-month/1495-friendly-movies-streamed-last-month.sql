# Write your MySQL query statement below

SELECT 
    DISTINCT title 
FROM Content 
JOIN TVProgram
    ON TVProgram.content_id = Content.content_id 
    AND TVProgram.program_date BETWEEN "2020-06-01" AND "2020-06-30"
    AND Content.Kids_content = 'Y'
    AND Content.content_type = 'Movies'
;