# Write your MySQL query statement below
SELECT query_name, ROUND(AVG(rating/position), 2) quality, ROUND(COUNT(CASE WHEN rating < 3 THEN 1 END)/count(query_name)*100, 2) poor_query_percentage 
FROM Queries
GROUP BY query_name;