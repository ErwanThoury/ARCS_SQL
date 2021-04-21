CREATE OR REPLACE FUNCTION buy_can(_assistant VARCHAR(64), _can VARCHAR(32))
RETURNS BOOLEAN AS
$$
DECLARE 
    p_credit INT;
    p_price INT;
BEGIN
    SELECT credit INTO p_credit FROM assistant WHERE login = _assistant;
    SELECT price INTO p_price FROM can WHERE name = _can;
    IF p_credit IS NULL THEN RETURN FALSE; END IF;
    IF p_credit >= p_price THEN 
        UPDATE assistant SET credit = credit - p_price WHERE login = _assistant;
        INSERT INTO transaction(assistant, can, timestamp)  
               VALUES (_assistant, _can, now());
        RETURN TRUE;
    ELSIF p_credit < p_price THEN 
        RETURN FALSE;
    END IF;
END 
$$
LANGUAGE plpgsql;
