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

-- Aliasing
-- Add an alias to the SQL query to rename the author column to unique_author in the result set.

-- Alias author so that it becomes unique_author
SELECT DISTINCT author AS unique_author
    FROM books;

-- VIEWing your query
-- Add a single line of code that saves the results of the written query as a view called library_authors.
-- Save the results of this query as a view called library_authors
CREATE VIEW library_authors AS
    SELECT DISTINCT author AS unique_author
    FROM books;

-- Limiting results
-- Let's take a look at a few of the genres represented in our library's books.
--Recall that limiting results is useful when testing code since result sets can have thousands of results! Queries are often written with a LIMIT of just a few records to test out code before selecting thousands of results from the database.
--Let's practice with LIMIT!

-- Using PostgreSQL, select the genre field from the books table; limit the number of results to 10.

-- Select the first 10 genres from books using PostgreSQL
SELECT genre
	FROM books
LIMIT 10;