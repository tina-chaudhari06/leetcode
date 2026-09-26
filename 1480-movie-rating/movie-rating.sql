(SELECT name AS results
 FROM Users u
 INNER JOIN MovieRating m
 ON u.user_id = m.user_id
 GROUP BY u.user_id, u.name
 ORDER BY COUNT(*) DESC, name ASC
 LIMIT 1)

UNION ALL 

(SELECT title AS results
 FROM Movies m
 INNER JOIN MovieRating r
 ON m.movie_id = r.movie_id
 WHERE created_at LIKE '2020-02%'
 GROUP BY m.movie_id, title
 ORDER BY AVG(rating) DESC, title ASC
 LIMIT 1);