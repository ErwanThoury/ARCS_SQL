INSERT INTO can VALUES
('Dr Pepper', 100, 330, DEFAULT);

INSERT INTO transaction(assistant, can, timestamp) VALUES
('claire.billy', 'Dr Pepper', '2019-02-22 17:43:00');

UPDATE can SET stock = stock - 1 WHERE name = 'Dr Pepper';
