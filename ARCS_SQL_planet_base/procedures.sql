CREATE OR REPLACE FUNCTION list_satellite_inf_750(syst INT)
RETURNS TABLE(satellite VARCHAR(32), planet VARCHAR(32), radius INT) AS
$$
DECLARE

BEGIN
    RETURN QUERY
    SELECT s.name, p.name, s.radius
    FROM planet p
    INNER JOIN satellite s ON p.id = s.id_planet
    WHERE s.radius <= 750 AND id_system = syst    
    ORDER BY p.name ASC, s.radius DESC, s.name ASC;
END;
$$
LANGUAGE plpgsql;














CREATE OR REPLACE FUNCTION space_travel(origin INT, destination INT,
    quantity BIGINT)
RETURNS boolean AS 
$$
DECLARE
    p_systemA INT;
    p_systemB INT;
    p_popA BIGINT;
BEGIN
    SELECT id_system INTO p_systemA
    FROM planet p 
    WHERE id = origin;

    SELECT population INTO p_popA
    FROM planet p 
    WHERE id = origin; 

    SELECT id_system INTO p_systemB
    FROM planet p 
    WHERE id = destination;

    IF p_systemA != p_systemB THEN RETURN FALSE; END IF;

    IF quantity < 1 THEN RETURN FALSE; END IF;
    
    IF p_popA - quantity < 0 THEN RETURN FALSE; END IF;

    UPDATE planet SET population = population - quantity WHERE id = origin;
    UPDATE planet SET population = population + quantity WHERE id = destination;

    RETURN TRUE;

END;
$$
LANGUAGE plpgsql;





