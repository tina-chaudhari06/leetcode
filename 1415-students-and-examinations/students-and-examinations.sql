# Write your MySQL query statement below
SELECT s.student_id, s.student_name, u.subject_name, count(e.subject_name) as attended_exams 
FROM Students s 
CROSS JOIN Subjects u 
LEFT JOIN Examinations e 
ON u.subject_name = e.subject_name
AND s.student_id = e.student_id
GROUP BY s.student_id, s.student_name, u.subject_name
ORDER BY s.student_id, u.subject_name;
