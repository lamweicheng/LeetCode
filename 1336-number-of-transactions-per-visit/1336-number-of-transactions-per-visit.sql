
SELECT a.countBucketId AS transactions_count, IFNULL(b.visits_count, 0) AS visits_count
FROM (
    # create an integer sequence by using a Visits left join Transactions table
    SELECT CAST((@seq := @seq + 1) AS SIGNED) AS countBucketId
    FROM (
        SELECT x.user_id FROM Visits x
        LEFT JOIN Transactions y
        ON x.user_id = y.user_id
    ) temp, (SELECT @seq := -1) AS init
) a

LEFT JOIN (
    SELECT transactions_count, COUNT(user_id) AS visits_count
    FROM (
        SELECT v.user_id, v.visit_date, COUNT(amount) AS transactions_count
        FROM Visits v
        LEFT JOIN Transactions t
        ON v.user_id = t.user_id AND v.visit_date = t.transaction_date
        GROUP BY v.user_id, v.visit_date
    ) temp
    GROUP BY transactions_count
) b

ON a.countBucketId = b.transactions_count
WHERE a.countBucketId <= (
    SELECT MAX(transactions_count) AS UPPERBOUND
    FROM (
        SELECT v.user_id, v.visit_date, COUNT(amount) AS transactions_count
        FROM Visits v
        LEFT JOIN Transactions t
        ON v.user_id = t.user_id AND v.visit_date = t.transaction_date
        GROUP BY v.user_id, v.visit_date
    ) temp
)