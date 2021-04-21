SELECT DISTINCT name
FROM creature_template ct INNER JOIN creature c ON ct.id = c.gid
INNER JOIN quest ON c.id = quest.creature_start  
WHERE creature_start = creature_end
ORDER BY name;
