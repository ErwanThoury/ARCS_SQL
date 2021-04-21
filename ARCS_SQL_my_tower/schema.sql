DROP TABLE IF EXISTS floor CASCADE;
DROP TABLE IF EXISTS floor_apartment CASCADE;
DROP TABLE IF EXISTS apartment CASCADE;
DROP TABLE IF EXISTS apartment_inhabitant CASCADE;
DROP TABLE IF EXISTS inhabitant CASCADE;

CREATE TABLE floor (
  id            INT PRIMARY KEY, -- floor number
  room_capacity INT NOT NULL,    -- total number of rooms on the floor
  CHECK(room_capacity > 0)
);

CREATE TABLE apartment (
  id      SERIAL PRIMARY KEY, -- apartment number
  nb_room INT    NOT NULL,    -- apartment size / number of rooms
  rent    INT    NOT NULL,    -- monthly rent of the apartment
  CHECK(nb_room > 0 AND rent > 0)
);

CREATE TABLE inhabitant (
  id         SERIAL      PRIMARY KEY, -- id card number
  firstname  VARCHAR(64) NOT NULL,    -- firstname of the inhabitant
  lastname   VARCHAR(64) NOT NULL,    -- lastname of the inhabitant
  age        INT         NOT NULL,    -- age of the inhabitant (in years)
  CHECK(age >= 0 AND firstname <> '' AND lastname <> '')
);

CREATE TABLE floor_apartment (
  id             SERIAL PRIMARY KEY,
  id_floor       INT    REFERENCES floor(id) NOT NULL,
  id_apartment   INT    REFERENCES apartment(id) NOT NULL UNIQUE
);

CREATE TABLE apartment_inhabitant (
  id             SERIAL PRIMARY KEY,
  id_inhabitant  INT    REFERENCES inhabitant(id) NOT NULL UNIQUE,
  id_apartment   INT    REFERENCES apartment(id) NOT NULL
);
