SELECT surname, e.name AS name, email
FROM employee e INNER JOIN agency a ON e.agency_code = a.code
WHERE ratings > 6
ORDER BY surname, e.name, email;
