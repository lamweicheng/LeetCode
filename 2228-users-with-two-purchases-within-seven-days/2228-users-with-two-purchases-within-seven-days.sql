# Write your MySQL query statement below

SELECT DISTINCT A.user_id FROM Purchases AS A 
    INNER JOIN 
            Purchases AS B ON A.user_id = b.user_id 
    AND a.purchase_id != b.purchase_id 

    WHERE datediff(b.purchase_date,a.purchase_date) between 0 and 7 
    GROUP BY 1 
    ORDER BY 1;


