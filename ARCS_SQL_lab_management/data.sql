INSERT INTO can VALUES ('Perrier', 40, 250, DEFAULT);
INSERT INTO can VALUES ('Coca-Cola', 200, 330, DEFAULT);
INSERT INTO can VALUES ('Redbull', 50, 350, 1.70);
INSERT INTO can VALUES ('Monster', 30, 500, 1.40);
INSERT INTO can VALUES ('Oasis', 100, 330, DEFAULT);
INSERT INTO can VALUES ('Canada Dry', 10, 330, 0.85);
INSERT INTO can VALUES ('Fanta', 125, 330, DEFAULT);
INSERT INTO can VALUES ('Nestea', 130, 330, DEFAULT);
INSERT INTO can VALUES ('Jus d''Orange', 100, 330, DEFAULT);


INSERT INTO assistant VALUES ('parker_r', 'Richard', 'Parker', 'tigrou');
INSERT INTO assistant VALUES ('login_x', 'Xavier', 'Loginard', 'thelegend27');
INSERT INTO assistant VALUES ('el_hal_a', 'Anas', 'El Halouani', 'ananas');
INSERT INTO assistant VALUES ('claire.billy', 'Claire', 'Billy', 'karaba');
INSERT INTO assistant VALUES ('ma_9', 'Antoine', 'Martin', 'alarsyo');
INSERT INTO assistant VALUES ('amelie.bertin', 'Amelie', 'Bertin', 'kicko');


INSERT INTO transaction(assistant, can, timestamp)  VALUES ('el_hal_a', 'Jus d''Orange', '2019-02-17 17:56:45');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('el_hal_a', 'Jus d''Orange', '2019-02-19 18:42:01');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('el_hal_a', 'Jus d''Orange', '2019-02-25 14:16:00');

INSERT INTO transaction(assistant, can, timestamp)  VALUES ('claire.billy', 'Oasis', '2019-02-17 14:32:10');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('claire.billy', 'Fanta', '2019-02-19 12:23:23');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('claire.billy', 'Nestea', '2019-02-22 19:35:48');

INSERT INTO transaction(assistant, can, timestamp)  VALUES ('ma_9', 'Coca-Cola', '2019-01-25 13:41:59');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('ma_9', 'Fanta', '2019-02-25 13:41:59');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('ma_9', 'Redbull', '2019-02-18 23:34:21');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('ma_9', 'Perrier', '2019-01-06 12:24:07');

INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Canada Dry', '2019-02-25 13:41:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Coca-Cola', '2019-02-25 13:46:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Canada Dry', '2019-02-25 13:51:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Coca-Cola', '2019-02-25 13:56:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Canada Dry', '2019-02-25 14:01:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Coca-Cola', '2019-02-25 14:06:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Canada Dry', '2019-02-25 14:11:00');
INSERT INTO transaction(assistant, can, timestamp)  VALUES ('amelie.bertin', 'Coca-Cola', '2019-02-20 11:53:27');
