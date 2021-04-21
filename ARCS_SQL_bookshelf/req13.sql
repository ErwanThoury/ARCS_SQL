SELECT title, author
FROM books b
WHERE release IN (SELECT MIN(release) FROM books WHERE author = b.author)
ORDER BY title, author;
