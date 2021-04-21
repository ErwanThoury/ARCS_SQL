SELECT name 
FROM creature c INNER JOIN creature_template ct ON c.gid = ct.id
WHERE c.id = 6;
