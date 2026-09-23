# Write your MySQL query statement below
SELECT s.user_id, IFNULL(ROUND(SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END)/count(*), 2), 0) confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c 
On s.user_id = c .user_id
GROUP BY s.user_id;