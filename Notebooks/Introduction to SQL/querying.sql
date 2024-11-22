--Querying the books table
--You're ready to practice writing your first SQL queries using the SELECT and FROM keywords. Recall from the video that SELECT is used to choose the fields that will be included in the result set, while FROM is used to pick the table in which the fields are listed.
--Feel free to explore books in the exercise.
--Your task in this exercise is to practice selecting fields from books

-- Use SQL to return a result set of all book titles included in the books table.

-- Return all titles from the books table
SELECT title 
FROM books;

-- Select both the title and author fields from books.
-- Select title and author from the books table

SELECT title, author
FROM books;
