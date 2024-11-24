--Learning to COUNT()
--You saw how to use COUNT() in the video. Do you remember what it returns?
--Here is a query counting film_id. Select the answer below that correctly describes what the query will return.

SELECT COUNT(film_id) AS count_film_id
    FROM reviews;

-- Returns 4968 

-- 2. Count the total number of records in the people table, aliasing (DISTINCT) the result as count_records.
-- Count the number of records in the people table

SELECT COUNT(*) AS count_records
    FROM people;

--Count the number of records with a birthdate in the people table, aliasing the result as count_birthdate.

SELECT COUNT(birthdate) AS count_birthdate
    FROM people;

--Returns 6152

-- Count the records for languages and countries in the films table;
-- alias as count_languages and count_countries.


SELECT COUNT(language) AS count_languages, COUNT(country) AS count_countries
FROM films;

-- DISTINCT
--Return the unique countries represented in the films table using DISTINCT.

SELECT DISTINCT country
	FROM films;

-- Return the number of unique countries represented in the films table, 
-- aliased as count_distinct_countries.


SELECT COUNT (DISTINCT country) AS count_distinct_countries
	FROM films;

-- It returs 64

