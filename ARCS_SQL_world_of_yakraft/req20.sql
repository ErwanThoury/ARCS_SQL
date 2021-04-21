SELECT ct.name
FROM creature_template ct INNER JOIN loots l ON ct.id = l.creature_gid
WHERE item_id IN (SELECT item_id FROM inventory WHERE character_id = 2);

