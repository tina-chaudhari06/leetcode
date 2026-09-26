# Write your MySQL query statement below
SELECT product_name, sum(unit) unit 
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE order_date LIKE '2020-02%'
GROUP BY p.product_id
HAVING sum(unit) >= 100;