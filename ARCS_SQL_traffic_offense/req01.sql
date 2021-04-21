SELECT owner_name AS owner, SUM(points) AS points_deducted 
FROM car c INNER JOIN ticket t ON c.id = t.car_id 
INNER JOIN ticket_type tt ON t.type_id = tt.id
GROUP BY owner
HAVING SUM(points) > 100
ORDER BY points_deducted;

