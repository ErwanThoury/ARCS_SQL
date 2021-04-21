SELECT assistant, SUM(price) AS price
FROM transaction t INNER JOIN can c ON t.can = c.name
GROUP BY assistant
ORDER BY price DESC
LIMIT 3;
