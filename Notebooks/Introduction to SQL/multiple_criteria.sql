-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year < 2000
	AND language = 'German';

-- Update the query from the previous step to show German-language 
--films released after 2000 rather than before.

SELECT title, release_year
FROM films
WHERE release_year > 2000
  AND language = 'German';

-- Select all records for German-language films released after 2000 and before 2010

SELECT *
FROM films
WHERE release_year > 2000
  AND release_year < 2010
  AND language = 'German';

--Select the title and release_year for films released in 1990 or 1999 using only WHERE and OR.
--Find the title and year of films from the 1990 or 1999

SELECT title, release_year
FROM films
WHERE release_year = 1990
   OR release_year = 1999;

--Using OR
--This time you'll write a query to get the title and release_year of films released in 1990 or 1999, 
--which were in English or Spanish and took in more than $2,000,000 gross.
--It looks like a lot, but you can build the query up one step at a time to get comfortable 
--with the underlying concept in each step. Let's go!


SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
	AND (language = 'English' OR language = 'Spanish');


--Finally, restrict the query to only return films worth more than $2,000,000 gross.

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND (language = 'English' OR language = 'Spanish')
  AND gross > 2000000;