# SQL

1. Free and paid
2. Relational data bases
3. Majority keywords are the same
4. It follows universal standars

## Two popular SQL flavors

### PostgreSQL

Free and open sources , as i like it.

PostgreSQL" is used to refer to both the database system itself as well as the SQL flavor used with it.

### SQLserver

SQL Server is also a relational database system which comes in both free and enterprise versions. It was created by Microsoft, so it pairs well with other Microsoft products.

 T-SQL is Microsoft's proprietary flavor of SQL, used with SQL Server databases.

Has free and paid version.

```sql


-- PostgreSQL

SELECT id, name 
	FROM employees
LIMIT 2;

-- SQL server

SELECT TOP (2) id, name
	FROM employees;




```

## Querying a database

While SQL can be used to create and modify databases, the focus of this course will be querying databases. Recall that a query is a request for data from a database. In this course, we'll look at how to execute a query for a database using keywords that will enable us to count and view all or a specified amount of records. We'll go over common SQL errors, style guidelines, and the order in which our code will execute. We'll cover how to filter data using various techniques, how to use aggregate functions, and finally, how to sort and group the results. We'll be using PostgreSQL throughout.

`COUNT ()` counts the number of records with a value in a field.

```sql
SELECT COUNT (birthdate) AS count_birthdates 
	FROM people;
```

**Count multiple fields**

```sql
SELECT COUNT (name) AS count_names, COUNT(birthday) AS count_birthdates
	FROM people;

```

 **Count the records in a table**

```sql
SELECT COUNT(*) AS total_records
	FROM people;

```

 **DISTINCT**

Removes duplicates to return only unique values

```sql
SELECT language 
	FROM films;

-- To remove duplicates

SELECT DISTINCT languages
	FROM films;


```

Combining `COUNT` with `DISTINCT` is also common to count the number of unique values in a field. This query counts the number of distinct birth dates in the people table.

 Let's take a moment to consider why this number is different from the birthdate count of 6152 we got before. Some people in our table likely share the same birthday; `COUNT` would include all the duplicates while `DISTINCT` counts all of the unique dates, no matter how many times they come up.

```sql

SELECT COUNT (DISTINCT birthdate) AS count_distinct_birthdates
	FROM people;
```

**From Practice with COUNT()**

Aliasing in SQL refers to giving a temporary name (or alias) to a table or a column for the duration of a query. This can make your result set easier to read and understand.

When you use the `AS` keyword followed by the alias name, it allows you to refer to that result in a more user-friendly way. For example, in your query:

```
SELECT COUNT(*) AS count_records
FROM people;
```

* `COUNT(*)` calculates the total number of records.
* `AS count_records` creates an alias called `count_records` for that count result.

So in the output, instead of seeing a generic column name like `COUNT(*)`, you will see the heading named `count_records`, which indicates what the number represents.

**SELECT DISTINCT**

## SQL style

SQL is a generous language when it comes to formatting. New lines, capitalization, and indentation are not required in SQL as they sometimes are in other programming languages. For example, the code on this slide will run just fine, returning the first three titles, release years, and countries from the films table. However, writing queries like this won't make us any friends in the SQL world because the lack of formatting makes the code difficult to read, especially as queries become more complex.

**Formating in not required**

```sql
select title, release_year, country from films limit 3
```

**BUT for best practices**

```sql
```sql
SELECT title, release_year, country FROM films limit 
```

## Indentation

```sql

```sql
SELECT 
	title, 
	release_year, 
	country 
FROM films
LIMIT 3;
```

### Semicolon

Have you noticed the sample code we've been looking at throughout this lesson has a semicolon at the end? Like capitalization and new lines, this semicolon is unnecessary in PostgreSQL; we could leave it out of the query and still expect the same results with no errors. However, including a semicolon at the end of the query is considered best practice for several reasons. First, some SQL flavors require it, so it's a good habit to have. Including a semicolon in a PostgreSQL query means that the query is more easily translated to another flavor if necessary. Additionally, like a period at the end of a sentence, a semicolon at the end of a query indicates its end, which is helpful in a file containing several queries.

### Dealing with non-standard field names

02:47 - 03:27

One last note on SQL style: while we can ensure our code is formatted beautifully, we don't have control over other people's SQL style. When creating a table, a SQL mistake is including spaces in a field name. To query that table, we'll need to enclose the field name in double-quotes to indicate that, despite being two words, the name refers to just one field. For example, if a sloppy SQL coder had named a field release-space-year as two words, we'd need to update the query we've seen throughout this chapter to the one shown here.

## Filtering Records

To filter, we need to use a new clause called WHERE, `which` allows us to focus on only the data relevant to our business questions. Going back to our coat analogy, we may want to select a coat from the closet

```sql
SELECT title
FROM films
WHERE release_year > 1960;
```

### Comparison operators

Let's explore some of the other operators. We would use the less-than operator to see films released before the year 1960.

```sql
SELECT title
FROM films
WHERE release_year < 1960;
```

We would use the less than or equal to operator to see films released during or before the year 1960.

```sql
SELECT title
FROM films
WHERE release_year <= 1960;
```

If we want to see films released in a specific year, we can use equals.

```sql
SELECT title
FROM films
WHERE release_year = 1960;
```

Here is a final example that isn't as intuitive as the others. If we wanted to filter films to see all releases EXCEPT those from the year 1960, we would combine the less than and greater than symbols as shown here. This is the SQL standard symbol that means "not equal to".

```sql
SELECT title
FROM films
WHERE release_year <> 1960;
```

Let's recap all the comparison operators we can use with WHERE to filter numbers. We have: greater than (that also means after), less than (that also means before), equal to, greater than or equal to, less than or equal to, and not equal to.

`WHERE` and the comparison operator, equals, can also be used with strings. In these cases, we will have to use single quotation marks around the strings we want to filter. For example, here, we want to filter titles where the country is Japan.

```sql
SELECT title
FROM films
WHERE country = 'Japan';
```

A final note on using `WHERE`. Similar to ` LIMIT`, this clause comes after the FROM statement when writing a query. If we use both WHERE and LIMIT, the written order will be SELECT, FROM, WHERE, LIMIT; however, the order of execution will now be FROM, WHERE, SELECT, LIMIT. Thinking about the coats in our closet, we go to the closet we want to get the coat from, find where the green coats are, and select five of them.

```sql
-- Written code
SELECT item
FROM coats
WHERE color = 'green';
LIMIT 5;
```

```sql
-- Order of execution
3. SELECT item
1. FROM coats
2. WHERE colo = 'green';
4. LIMIT 5;
```

## Multiple criteria

We will be learning about three additional keywords that will allow us to enhance our filters when using WHERE by adding multiple criteria. These are OR, AND, and BETWEEN. In the context of our coats, we could look at coats where the color is yellow or the length is short, or we could filter for coats where both criteria are true. We can also look for coats that have between one and five buttons.

`OR`, `AND`, `BETWEEN`

```sql
SELECT *
FROM coats 
WHERE color = 'yellow' OR length = 'short';
```

```sql
SELECT *
FROM coats 
WHERE color = 'yellow' AND length = 'short';
```

```sql
SELECT *
FROM coats 
WHERE buttons BETWEEN 1 AND 5;
```

`OR`  is used when we want to filter multiple criteria and only need to satisfy at least one condition. Perhaps we want to select green or purple coat options as an example.

In SQL, we combine OR with WHERE to achieve this type of filtering. Here is an example using the films database. The query on the left returns all films released in either 1994 or 2000. Note that we must specify the field for every OR condition, so the query on the right is invalid. That query hasn't specified what field or operator should be associated with the year 2000.

```sql
SELECT title
FROM films 
WHERE relase_year = 1994
OR 1 relase_year =2000;
```

`AND`

If we want to satisfy all criteria in our filter, we need to use AND with WHERE. For example, this query gives us the titles of films released between 1994 and 2000. We need to specify the field name separately for every AND condition as with OR.

```sql
SELECT title
FROM films 
WHERE relase_year > 1994
AND relase_year < 2000;
```

Let's kick it up a notch. We now want to filter films released in 1994 OR 1995, AND with a certification of either PG or R. Thankfully, we can combine AND and OR to answer this question. If a query has multiple filtering conditions, we will need to enclose the individual clauses in parentheses to ensure the correct execution order; otherwise, we may not get the expected results.

```sql
SELECT title
FROM films 
WHERE (relase_year = 1994 OR relase_year = 1995)
	AND (certification = 'PG'OR certification = 'R');
```

As we've learned, we can use this query to get titles of all films released in and between 1994 and 2000. Checking for ranges like this is very common, so in SQL the BETWEEN keyword provides a valuable shorthand for filtering values within a specified range. This second query is equivalent to the one on the left. It's important to remember that BETWEEN is inclusive, meaning the results contain the beginning and end values.

```sql
SELECT title
FROM films 
WHERE relase_year >= 1994
AND relase_year <= 2000;
```
