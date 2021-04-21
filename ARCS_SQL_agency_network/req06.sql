SELECT destination_acronym AS destination,
customer_surname AS customer, 
travelers,
DATE_PART('day', end_date::timestamp - start_date::timestamp) AS number_of_days
FROM booking
ORDER BY number_of_days DESC, destination, customer
;
