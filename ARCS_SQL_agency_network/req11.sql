SELECT id, 
CASE WHEN end_date > now() AND now() > start_date THEN 'Ongoing'
    WHEN end_date < now() THEN 'Done'
    WHEN start_date > now() THEN 'Booked'
    END AS "trip status"
FROM booking
ORDER BY "trip status", id
;
