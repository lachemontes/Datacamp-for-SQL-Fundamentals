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

-- Select all fields from the books table. As in many languages use "*" if you want to select all
-- Select all fields from the books table
SELECT *
    FROM books;

-- Making queries DISTINCT

-- Write SQL code that returns a result set with just one column listing the unique authors in the books table.

-- Select unique authors from the books table
SELECT DISTINCT author
    FROM books;