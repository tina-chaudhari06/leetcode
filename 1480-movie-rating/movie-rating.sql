# Write your MySQL query statement below
(SELECT name results
FROM (
    SELECT name, count(*) c
    FROM Users u
    INNER JOIN MovieRating m
    ON u.user_id = m.user_id
    GROUP BY u.user_id
    
) a
ORDER BY c DESC, name
LIMIT 1)

UNION ALL

(SELECT title results
FROM(
    SELECT m.movie_id, title, AVG(rating) a
    FROM Movies m 
    INNER JOIN MovieRating r
    ON m.movie_id = r.movie_id
    WHERE created_at LIKE '2020-02%'
    GROUP BY m.movie_id
) q
ORDER BY a DESC, title
LIMIT 1)