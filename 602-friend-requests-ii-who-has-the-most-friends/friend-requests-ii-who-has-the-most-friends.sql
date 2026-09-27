# Write your MySQL query statement below
SELECT id, SUM(n) num
FROM (
    SELECT requester_id id, count(*) n
    FROM RequestAccepted 
    GROUP BY requester_id

    UNION ALL

    SELECT accepter_id id, count(*) n
    FROM RequestAccepted 
    GROUP BY accepter_id 
) r
GROUP BY id
ORDER BY SUM(n) DESC
LIMIT 1;
