CREATE OR REPLACE VIEW view_nearest_planet_to_sun AS

SELECT name AS planet
FROM planet p 
ORDER BY period ASC
LIMIT 3;



CREATE OR REPLACE VIEW view_nb_satellite_per_planet AS

SELECT p.name AS planet, 
(
 SELECT count(*) 
 FROM satellite 
 WHERE id_planet = p.id AND radius > 500
) "number of satellites"
FROM planet p

ORDER BY "number of satellites", planet;



CREATE OR REPLACE VIEW view_average_period AS
SELECT system, average_period
FROM
(

    SELECT ps.name AS system, CAST(AVG(p.period) AS DECIMAL(18,2)) AS average_period
    FROM planetary_system ps INNER JOIN planet p ON ps.id = p.id_system
    GROUP BY system
UNION ALL

    SELECT ps.name AS system, 0 AS average_period
    FROM planetary_system ps
    WHERE ps.id NOT IN (SELECT id_system FROM planet)

) AS blopReinetteRoyal
ORDER BY average_period, system;




CREATE OR REPLACE VIEW view_biggest_entities AS

SELECT 
CASE WHEN  name IN (SELECT name FROM planet) THEN 'planet' 
     WHEN  name IN (SELECT name FROM satellite) THEN 'satellite'
END AS type, system, name, radius
FROM 
(
    SELECT s.radius AS radius , ps.name AS system, s.name AS name 
    FROM satellite s INNER JOIN planet p ON s.id_planet = p.id
    INNER JOIN planetary_system ps ON p.id_system = ps.id
    
    UNION ALL 
    
    SELECT radius, ps.name AS system, p.name AS name 
    FROM planet p INNER JOIN planetary_system ps ON p.id_system = ps.id
 
) AS subQuery
ORDER BY radius DESC, name
LIMIT 10
;
