INSERT INTO floor VALUES (0,20); -- 0
INSERT INTO floor VALUES (1,15); -- 1
INSERT INTO floor VALUES (2,17); -- 2
INSERT INTO floor VALUES (3,9);  -- 3
INSERT INTO floor VALUES (4,16); -- 4
INSERT INTO floor VALUES (5,30); -- 5
INSERT INTO floor VALUES (6,22); -- 6
INSERT INTO floor VALUES (7,25); -- 7
INSERT INTO floor VALUES (8,14); -- 8
INSERT INTO floor VALUES (9,12); -- 9
INSERT INTO floor VALUES (10,36); -- 10

INSERT INTO apartment VALUES (001, 1, 130);
INSERT INTO floor_apartment VALUES (DEFAULT, 0, 001);

INSERT INTO apartment VALUES (101, 2, 230);
INSERT INTO floor_apartment VALUES (DEFAULT, 1, 101);

INSERT INTO apartment VALUES (102, 4, 540);
INSERT INTO floor_apartment VALUES (DEFAULT, 1, 102);

INSERT INTO apartment VALUES (103, 5, 620);
INSERT INTO floor_apartment VALUES (DEFAULT, 1, 103);

INSERT INTO apartment VALUES (104, 2, 230);
INSERT INTO floor_apartment VALUES (DEFAULT, 1, 104);

INSERT INTO apartment VALUES (201, 1, 170);
INSERT INTO floor_apartment VALUES (DEFAULT, 2, 201);

INSERT INTO apartment VALUES (202, 2, 170);
INSERT INTO floor_apartment VALUES (DEFAULT, 2, 202);

INSERT INTO apartment VALUES (203, 3, 170);
INSERT INTO floor_apartment VALUES (DEFAULT, 2, 203);

INSERT INTO apartment VALUES (301, 4, 560);
INSERT INTO floor_apartment VALUES (DEFAULT, 3, 301);

INSERT INTO apartment VALUES (401, 6, 700);
INSERT INTO floor_apartment VALUES (DEFAULT, 4, 401);

INSERT INTO apartment VALUES (402, 7, 2700);
INSERT INTO floor_apartment VALUES (DEFAULT, 4, 402);

INSERT INTO apartment VALUES (501, 2, 900);
INSERT INTO floor_apartment VALUES (DEFAULT, 5, 501);

INSERT INTO apartment VALUES (701, 3, 1300);
INSERT INTO floor_apartment VALUES (DEFAULT, 7, 701);

INSERT INTO apartment VALUES (801, 1, 600);
INSERT INTO floor_apartment VALUES (DEFAULT, 8, 801);

INSERT INTO apartment VALUES (1001, 5, 2700);
INSERT INTO floor_apartment VALUES (DEFAULT, 10, 1001);

INSERT INTO inhabitant VALUES(65652, 'Loic', 'Banet', 22);
INSERT INTO inhabitant VALUES(65653, 'Antoine', 'Bardoux', 40);
INSERT INTO inhabitant VALUES(65654, 'Moray', 'Baruh', 11);
INSERT INTO inhabitant VALUES(65655, 'Pierre', 'Boulay', 33);
INSERT INTO inhabitant VALUES(65656, 'Maxime', 'Boutin', 48);
INSERT INTO inhabitant VALUES(65657, 'Denis', 'Castéran', 86);
INSERT INTO inhabitant VALUES(65658, 'Alexndre', 'Chabrolin', 49);
INSERT INTO inhabitant VALUES(65659, 'Thibault', 'Deutsch', 30);
INSERT INTO inhabitant VALUES(65660, 'Arthur', 'Douillard', 29);
INSERT INTO inhabitant VALUES(65661, 'Marc', 'Fresne', 69);
INSERT INTO inhabitant VALUES(65662, 'Gael', 'Gilet-Couraud', 82);
INSERT INTO inhabitant VALUES(65663, 'Thomas', 'Guerville', 24);
INSERT INTO inhabitant VALUES(65664, 'Célian', 'Jonathan', 85);
INSERT INTO inhabitant VALUES(65665, 'Thomas', 'Josso', 95);
INSERT INTO inhabitant VALUES(65666, 'Ashkan', 'Kiaie Sandjie', 44);
INSERT INTO inhabitant VALUES(65667, 'Guillaume', 'Le Gouard', 55);
INSERT INTO inhabitant VALUES(65668, 'Thibault', 'Liotier', 38);
INSERT INTO inhabitant VALUES(65669, 'Kévin', 'Louzou', 60);
INSERT INTO inhabitant VALUES(65670, 'Jeremy', 'Lugand', 80);
INSERT INTO inhabitant VALUES(65671, 'Timothé', 'Mailhac', 59);
INSERT INTO inhabitant VALUES(65672, 'Guillaume', 'Marques',84);
INSERT INTO inhabitant VALUES(65673, 'Anatole', 'Moreau', 10);
INSERT INTO inhabitant VALUES(65674, 'Sarasvati', 'Moutoucomarapoule', 97);
INSERT INTO inhabitant VALUES(65675, 'Paul', 'Nicolas', 46);
INSERT INTO inhabitant VALUES(65676, 'Cyprien', 'Orfila', 71);
INSERT INTO inhabitant VALUES(65677, 'David', 'Peicho', 47);
INSERT INTO inhabitant VALUES(65678, 'Paul-Henry', 'Perrissel', 49);
INSERT INTO inhabitant VALUES(65679, 'Jeanne', 'Petit', 64);
INSERT INTO inhabitant VALUES(65680, 'Paul', 'Riquer', 39);
INSERT INTO inhabitant VALUES(65681, 'Hugo', 'Rybinski', 30);
INSERT INTO inhabitant VALUES(65682, 'Matthieu', 'Vidal', 88);
INSERT INTO inhabitant VALUES(65683, 'Florent', 'Youinou', 26);

INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65652, 101);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65653, 101);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65654, 101);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65655, 101);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65659, 102);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65656, 201);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65660, 202);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65661, 202);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65662, 202);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65663, 203);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65664, 203);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65665, 301);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65666, 401);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65675, 501);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65676, 501);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65677, 701);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65678, 701);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65679, 801);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65680, 801);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65681, 1001);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65682, 1001);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65683, 1001);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65657, 001);
INSERT INTO apartment_inhabitant VALUES (DEFAULT, 65673, 001);
