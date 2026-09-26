# Write your MySQL query statement below
SELECT person_name
FROM (
    SELECT *, SUM(weight) over(order by turn) t
    FROM Queue
) q
WHERE t <= 1000
ORDER BY t DESC
LIMIT 1;