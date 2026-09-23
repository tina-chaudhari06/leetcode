# Write your MySQL query statement below
SELECT s.user_id, IFNULL(ROUND(COUNT(CASE WHEN action = 'confirmed' THEN 1 END)/count(*), 2), 0) confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c 
On s.user_id = c .user_id
GROUP BY s.user_id;