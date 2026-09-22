# Write your MySQL query statement below
SELECT p.product_id, IFNULL(ROUND(SUM(price*units)/ SUM(units), 2), 0) average_price
FROM Prices p
LEFT JOIN UnitsSold s 
ON p.product_id = s.product_id AND purchase_date between start_date and end_date
GROUP BY p.product_id; 