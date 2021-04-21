SELECT title, author 
FROM books
WHERE genre = 'Fantasy' OR genre LIKE '%fantasy%'
ORDER BY title, author;
