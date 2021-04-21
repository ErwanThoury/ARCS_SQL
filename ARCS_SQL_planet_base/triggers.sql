CREATE TABLE enregistrement
(
    id SERIAL PRIMARY KEY,
    date TIMESTAMP NOT NULL,
    old_population BIGINT,
    new_population BIGINT
);


CREATE OR REPLACE VIEW view_earth_population_evolution AS
SELECT id,
       TO_CHAR(e.date, 'DD/MM/YYYY HH24:MI:SS') AS date,
       old_population AS "old population",
       new_population AS "new population"
FROM enregistrement e
ORDER BY date;

CREATE OR REPLACE FUNCTION maj_pop()
RETURNS trigger AS 
$$
BEGIN
    IF OLD.name != 'Earth' THEN RETURN NEW; END IF;
    INSERT INTO enregistrement VALUES 
    (DEFAULT, now(), OLD.population, NEW.population);
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER store_earth_population_updates
AFTER UPDATE OF population ON planet
FOR EACH ROW
EXECUTE PROCEDURE maj_pop();
