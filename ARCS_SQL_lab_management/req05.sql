SELECT id, assistant, can, timestamp 
FROM transaction
WHERE timestamp IN (SELECT MAX(timestamp) FROM transaction);
