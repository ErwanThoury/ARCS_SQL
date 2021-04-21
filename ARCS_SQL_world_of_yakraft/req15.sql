SELECT title, name
FROM quest q INNER JOIN character_quests cq ON q.id = cq.quest_id 
INNER JOIN character c ON cq.character_id = c.id
WHERE complete = 0
ORDER BY title, name;
