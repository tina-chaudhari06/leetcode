# Write your MySQL query statement below
SELECT d.name Department, e.name Employee, e.salary Salary 
FROM Employee e
INNER JOIN Department d
ON e.departmentId = d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT salary)
    FROM Employee e1
    WHERE e1.salary > e.salary AND e1.departmentId = e.departmentId
)
