SELECT title, author as name
FROM books b INNER JOIN authors a ON b.author = a.name 
WHERE release > death_date
ORDER BY title, name;
