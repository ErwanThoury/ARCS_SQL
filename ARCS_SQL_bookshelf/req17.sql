SELECT title, author, EXTRACT(year from release) AS release_year
FROM books
ORDER BY release_year DESC, title, author;
