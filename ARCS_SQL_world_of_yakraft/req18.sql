CREATE TABLE faction
(
    id SERIAL NOT NULL,
    color INT NOT NULL,
    name VARCHAR(64) NOT NULL, 

    PRIMARY KEY (id)

);
INSERT INTO faction VALUES
(1, x'00FF00'::int, 'Enlightened');
ALTER TABLE creature ADD COLUMN faction_id INT REFERENCES faction(id);
ALTER TABLE creature 
ADD CONSTRAINT id_faction FOREIGN KEY (faction_id) REFERENCES faction (id);
--UPDATE creature SET id_faction = 1 WHERE id_faction is NULL;
