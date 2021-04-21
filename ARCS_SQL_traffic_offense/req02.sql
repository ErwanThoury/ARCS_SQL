SELECT extract(month from issue_date) AS month,
extract(year from issue_date) AS year, 
COUNT(t.id) AS number_of_tickets 
FROM ticket t 
GROUP BY extract(month from issue_date), extract(year from issue_date) 
ORDER BY number_of_tickets DESC;

