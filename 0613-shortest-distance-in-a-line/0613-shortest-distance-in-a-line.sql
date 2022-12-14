# Write your MySQL query statement below

SELECT
    MIN(ABS(P1.x - P2.x)) AS shortest FROM Point AS P1 INNER JOIN Point AS P2 
        ON 
        p1.x <> p2.x
;