CREATE OR REPLACE FUNCTION add_floor(capacity INT)
RETURNS BOOLEAN AS
$$
DECLARE
    p_max INT;
BEGIN
    IF capacity < 1 THEN RETURN FALSE; END IF;
    SELECT MAX(id) INTO p_max
    FROM floor;
    INSERT INTO floor VALUES (p_max +1, capacity);
    RETURN TRUE;

END;
$$
LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION renovate_floor(floor INT, new_capacity INT)
RETURNS BOOLEAN AS
$$
DECLARE
    p_verif INT;
BEGIN
    IF new_capacity < 1 THEN RETURN FALSE; END IF;
    UPDATE floor fl SET room_capacity = new_capacity WHERE id = floor;
    SELECT room_capacity INTO p_verif FROM floor f WHERE id = floor;
    IF p_verif = new_capacity THEN RETURN TRUE; 
    ELSIF p_verif != new_capacity THEN RETURN FALSE;
    END IF;
END;
$$
LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION add_apartment(number INT, rooms INT, rent INT,
floor INT)
RETURNS BOOLEAN AS 
$$
DECLARE 
    p_verif1 INT;
    p_verif2 INT;
    p_verif3 INT;
    p_verif4 INT;
BEGIN
    SELECT id INTO p_verif1 FROM apartment WHERE id = number;
    IF p_verif1 IS NOT NULL THEN RETURN FALSE; END IF;
    
    SELECT id, room_capacity INTO p_verif2, p_verif3 
    FROM floor fl WHERE id = floor;
    IF p_verif2 IS NULL THEN RETURN FALSE; END IF;
    IF p_verif3 - rooms < 0 THEN RETURN FALSE; END IF;
      
    INSERT INTO apartment VALUES(number, rooms, rent);
    SELECT id INTO p_verif4 FROM apartment WHERE id = number;
    IF p_verif4 IS NULL THEN RETURN FALSE; END IF;
    RETURN TRUE;
END;
$$
LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION add_inhabitant(id INT, firstname VARCHAR(64),
lastname VARCHAR(64), age INT)
RETURNS BOOLEAN AS 
$$
DECLARE 
    p_verif INT;
    p_id INT;
BEGIN
    p_id := id;
    SELECT i.id INTO p_verif FROM inhabitant i where i.id = p_id;
    IF p_verif IS NOT NULL THEN RETURN FALSE; END IF;
    INSERT INTO inhabitant VALUES (id, firstname, lastname, age);
    SELECT i.id INTO p_verif FROM inhabitant i WHERE i.id = p_id;
    IF p_verif IS NULL THEN RETURN FALSE; END IF;
    RETURN TRUE;
END;
$$
LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION add_inhabitant_to_apartment(id_inhabitant INT,
id_apartment INT)
RETURNS BOOLEAN AS 
$$
DECLARE 
    p_ageMax INT;
    p_capaciteTotal INT;
    p_nbHabitant INT;
    p_idHab INT; 
    p_idApa INT;
    p_ageAct INT;
BEGIN
    p_idHab := id_inhabitant;
    p_idApa := id_apartment;

    SELECT nb_room INTO p_capaciteTotal
    FROM apartment
    WHERE id = p_idApa;
    
    SELECT count(*) INTO p_nbHabitant 
    FROM apartment_inhabitant ai
    WHERE ai.id_apartment = p_idApa;
    
    IF (p_capaciteTotal * 2) - p_nbHabitant - 1 < 0 THEN RETURN FALSE; END IF;

    SELECT MAX(age) INTO p_ageMax 
    FROM apartment_inhabitant ai INNER JOIN inhabitant i 
    ON ai.id_inhabitant = i.id
    WHERE ai.id_inhabitant = p_idHab;
    
    SELECT age INTO p_ageAct
    FROM inhabitant i
    WHERE i.id = p_idHab;

    IF p_ageMax < 18 AND p_ageAct < 18 THEN RETURN FALSE; END IF;

    INSERT INTO apartment_inhabitant 
    VALUES (DEFAULT, p_idHab, p_idApa);

    RETURN TRUE;
END;
$$
LANGUAGE plpgsql;

