# Write your MySQL query statement below
SELECT p.firstName firstName, p.lastName lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;