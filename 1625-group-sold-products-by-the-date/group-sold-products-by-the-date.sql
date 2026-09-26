# Write your MySQL query statement below
SELECT sell_date, count(DISTINCT product) num_sold, GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;