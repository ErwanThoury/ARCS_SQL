SELECT title, author, release
FROM books
WHERE  1899 > EXTRACT(year from release) OR EXTRACT(year from release) > 2000
ORDER BY release DESC, title, author;
