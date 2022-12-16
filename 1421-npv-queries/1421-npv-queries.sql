# Write your MySQL query statement below
SELECT 
    Queries.id,
    Queries.year,
    IFNULL(NPV.npv,0) AS npv
FROM Queries 
LEFT JOIN NPV
    ON NPV.id = Queries.id AND NPV.year = Queries.year
;