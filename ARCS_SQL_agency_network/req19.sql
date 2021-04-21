SELECT c.surname AS surname, c.name AS name,
d.country || ', ' || d.city AS destination, h.name AS hotel
FROM customer c INNER JOIN destination d ON c.top_destination = d.acronym
INNER JOIN hotel h ON d.hotel_id = h.id
ORDER BY surname, name, destination, hotel
;
