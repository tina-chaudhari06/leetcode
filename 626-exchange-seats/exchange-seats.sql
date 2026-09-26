# Write your MySQL query statement below
SELECT CASE WHEN Id%2 = 1 AND id+1 in (SELECT id FROM Seat) then id+1
            WHEN id%2 = 0 then id-1
            ELSE id END as id, Student
FROM Seat 
ORDER BY id;            