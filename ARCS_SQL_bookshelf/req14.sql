SELECT name, 
CASE
    WHEN death_date IS NULL AND birth_date <= '1999-12-31' THEN
    CAST(DATE_PART('day', '2000-01-01'::timestamp - birth_date::timestamp) AS INTEGER)
    WHEN death_date IS NOT NULL THEN
    CAST(DATE_PART('day', death_date::timestamp - birth_date::timestamp) AS INTEGER)
END AS days
FROM authors
WHERE birth_date < '2000-01-01'
ORDER BY name;
