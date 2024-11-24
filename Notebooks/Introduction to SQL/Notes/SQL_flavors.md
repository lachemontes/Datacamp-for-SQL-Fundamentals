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

Often query results will include many duplicate values. You can use the `DISTINCT` keyword to select the unique values from a field.

This might be useful if, for example, you're interested in knowing which languages are represented in the `films` table. See if you can find out what countries are represented in this table with the following exercises.

https://rahuldkjain.github.io/gh-profile-readme-generator/


*Trypodendron lineatum*

[![Header]()](https://github.com/lachemontes)
