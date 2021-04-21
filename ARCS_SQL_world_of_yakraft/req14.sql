SELECT title 
FROM quest
WHERE id IN (SELECT quest_id FROM character_quests WHERE character_id = 1 
AND complete = 1)
ORDER BY title; 
