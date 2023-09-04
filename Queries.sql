use assignment2;
-- A simple query that pulls all columns and rows from a table
SELECT * FROM Customer;

-- A query that displays a subset of columns
SELECT Cust_id FROM Customer;

-- A query that displays a subset of columns with a single clause (predicate) WHERE statement
SELECT * FROM Buiding_the_pizza
WHERE size = "S";

-- A query that displays a subset of columns with a multi-clause (predicate) WHERE statement using AND/OR
SELECT * FROM Buiding_the_pizza
WHERE size = "M" OR "XL";

-- A query that performs a single table join.  In other words, you are joining 2 tables.
SELECT * FROM Customer, Invoice;

-- A query that performs a multi-table join. In other words, you are joining 3 or more tables.
SELECT * FROM Customer, Invoice, Buiding_the_pizza;

-- A query that performs an aggregate (count, min, max, sum, avg, etc.).
SELECT COUNT(*) FROM Customer;

-- A query that performs an aggregate (count, min, max, sum, avg, etc.) with a GROUP BY.
SELECT AVG(Total) FROM receipt
GROUP BY Receipt_id;

-- A query that performs an aggregate (count, min, max, sum, avg, etc.). with a GROUP BY and a HAVING clause
SELECT AVG(Total) FROM receipt
GROUP BY Receipt_id
HAVING Receipt_id LIKE 980;

-- A query that performs a subquery either as part of the WHERE clause or as a derived/virtual table.
SELECT * FROM Invoice
WHERE Receipt_name_id = 982;

-- A query that performs an aggregate with a join and a group by.
SELECT SUM(Total) FROM Receipt
LEFT JOIN Customer
ON Customer.Cust_id = Receipt.Total
GROUP BY Customer.Cust_id;