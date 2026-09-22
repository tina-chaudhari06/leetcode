# Write your MySQL query statement below
SELECT contest_id, ROUND(count(DISTINCT user_id)*100 / (SELECT count(user_id) FROM users), 2) percentage 
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;