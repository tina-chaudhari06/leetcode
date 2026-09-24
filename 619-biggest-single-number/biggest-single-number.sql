# Write your MySQL query statement below
SELECT MAX(n.num) num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) n;
