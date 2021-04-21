DROP TABLE IF EXISTS car CASCADE;
DROP TABLE IF EXISTS ticket_type CASCADE;
DROP TABLE IF EXISTS ticket CASCADE;


CREATE TABLE car (
    id             SERIAL      NOT NULL,
    owner_name     VARCHAR(32) NOT NULL DEFAULT 'human',

    PRIMARY KEY (id)
);


CREATE TABLE ticket_type (
    id      SERIAL,
    name    VARCHAR(32) NOT NULL,
    points  INT         NOT NULL CHECK(points > 0),

    PRIMARY KEY (id)
);


CREATE TABLE ticket (
    id          SERIAL  NOT NULL,
    car_id      INT     NOT NULL REFERENCES car(id),
    type_id     INT     NOT NULL REFERENCES ticket_type(id),
    issue_date  DATE    NOT NULL DEFAULT CURRENT_DATE,

    PRIMARY KEY (id)
);
