SELECT c.id 
FROM creature c INNER JOIN creature_template ct ON c.gid = ct.id
WHERE level > 10
ORDER BY c.id;
