# SQL flavors

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
