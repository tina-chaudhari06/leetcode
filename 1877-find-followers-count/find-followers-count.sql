# Write your MySQL query statement below
SELECT user_id, count(*) followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
