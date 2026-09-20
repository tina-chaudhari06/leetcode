# Write your MySQL query statement below
Select DISTINCT(author_id) as id 
from VIEWS 
where author_id = viewer_id
ORDER BY author_id;