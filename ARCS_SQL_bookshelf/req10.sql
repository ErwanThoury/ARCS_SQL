SELECT title, author
FROM books
WHERE author IN (SELECT name FROM authors WHERE country = 'France') 
AND genre = 'Poem'
ORDER BY title, author;
