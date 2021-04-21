SELECT title, ct.name AS name
FROM quest q INNER JOIN creature c ON q.creature_start = c.id 
INNER JOIN creature_template ct ON c.gid = ct.id
ORDER BY title, ct.name;
