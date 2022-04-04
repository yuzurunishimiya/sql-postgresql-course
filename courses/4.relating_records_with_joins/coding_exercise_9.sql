-- Select books title and author name
SELECT title, name
FROM books
JOIN authors ON authors.id = books.author_id;
