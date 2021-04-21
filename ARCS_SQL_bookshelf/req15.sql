SELECT author AS name,
CASE WHEN COUNT(*) > 1 THEN COUNT(*) || ' books' 
     
     WHEN COUNT(*) < 2 THEN COUNT(*) || ' book'

END AS stocks
FROM books
GROUP BY name
ORDER BY name;
