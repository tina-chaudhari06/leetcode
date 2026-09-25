# Write your MySQL query statement below
SELECT (
    SELECT salary  
    from Employee 
    GROUP BY salary
    ORDER BY salary DESC
    LIMIT 1, 1
) as SecondHighestSalary;
