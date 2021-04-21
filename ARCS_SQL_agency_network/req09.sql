SELECT DISTINCT customer_surname 
FROM booking
WHERE end_date > '2019-03-11' AND '2019-03-11' > start_date
ORDER BY customer_surname
;

