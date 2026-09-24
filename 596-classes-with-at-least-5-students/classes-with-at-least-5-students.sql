# Write your MySQL query statement below
SELECT t.class
FROM (
    SELECT class, count(student) c
    FROM Courses
    GROUP BY class
) t
WHERE t.c > 4;

