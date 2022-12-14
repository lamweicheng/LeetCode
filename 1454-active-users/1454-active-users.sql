# Write your MySQL query statement below

SELECT DISTINCT t1.id, (SELECT name FROM Accounts WHERE id = t1.id) AS name
FROM (
    SELECT id, login_date, (@seq := @seq + 1) AS seq_id
    FROM (SELECT DISTINCT * FROM Logins) t, (SELECT @seq := 0) AS init
    ORDER BY id, login_date
) t1
WHERE EXISTS (
    SELECT * FROM (
        SELECT id, login_date, (@cnt := @cnt + 1) AS seq_id
        FROM (SELECT DISTINCT * FROM Logins) t, (SELECT @cnt := 0) AS init
        ORDER BY id, login_date
    ) t2
    WHERE t2.id = t1.id AND DATEDIFF(t2.login_date, t1.login_date) = 4 AND t2.seq_id = t1.seq_id + 4
)