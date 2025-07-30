# 🗒️ SQL Beginner Notes  

## 📁 What is a Database?  
A database is a large bucket that stores data in an organized manner.  

---

## 🗂️ Creating a Database
```sql
CREATE DATABASE myDB;
````
- Semicolon is needed at the end of every SQL statement.

- SQL syntax is case-insensitive (both uppercase & lowercase work).

---

## ➡️ Use a Database

`USE myDB;` -- Sets the database as the default schema

---

## ❌ Drop a Database
```sql
DROP DATABASE myDB;
```
---

## 🔒 Set Database to Read-Only Mode
```sql
ALTER DATABASE myDB READ ONLY = 1;
```
-- 1 means true (locked)
-- Set to 0 to allow modifications

---

## 📝 Creating a Table

Common Data Types:

- VARCHAR(20) → String with max 20 characters

- INT → Whole number

- DATE → Only date

- DATETIME → Date with time

- DECIMAL(5, 2) → Decimal with 5 digits total, 2 after decimal
```sql
CREATE TABLE employees
(
    ID INT,
    name VARCHAR(50),
    price DECIMAL(5, 2)
);
```
---

## ✏️ Modifying Tables

✅ Rename Table
```sql
RENAME TABLE employees TO empInfo;
```
---

## ➕ Add New Column
```sql
ALTER TABLE employees
ADD priceID VARCHAR(15);
```
---

## 📝 Rename a Column
```sql
ALTER TABLE employees
RENAME COLUMN name TO empName;
```
---

## 🛠️ Change Data Type of a Column
```sql
ALTER TABLE employees
MODIFY COLUMN name VARCHAR(60);
```
## 🔄 Change Column Position
```sql
ALTER TABLE employees
MODIFY price DECIMAL(5,2) AFTER name;
```
---

## ❌ Drop a Column

`ALTER TABLE employees`

`DROP COLUMN price;`

---

## ✅ Inserting Rows
```sql
INSERT INTO table_name VALUES (...);
```
`-- Inserts a full row. Must match the table’s column order and data types.`

`INSERT INTO table_name (column1, column2, ...) VALUES (...); `

`-- Inserts only into specific columns; others will be NULL.`

Example:
```sql
INSERT INTO sales VALUES
(201, 101, 1, 1, '2025-07-01'),
(202, 102, 2, 2, '2025-07-02');
```
---

## ✅ Updating Rows
```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```
Example:
```sql
UPDATE sales
SET amount = 10
WHERE saleID = 205;
```
If you omit `WHERE`, all rows will be updated.

---

## ✅ Deleting Rows
```sql
DELETE FROM table_name
WHERE condition;
```
Always use WHERE unless you want to delete all rows.

---

## ✅ Autocommit, Commit & Rollback

Autocommit (ON by default): Every statement is automatically saved.

COMMIT: Manually save changes.

ROLLBACK: Undo changes back to the last COMMIT point.



## 📑 Tables, Rows, and Columns  

- Tables have **rows** (records) and **columns** (fields).  
- The number of columns is usually fixed, but rows can be unlimited.  
- Use `SELECT` and `FROM` to extract data.  


`SELECT column1, column2 FROM table_name; -- Select specific columns`  

`SELECT * FROM table_name; -- Select all columns`

---

## ✨ DISTINCT — Removing Duplicates

Use `DISTINCT` to remove duplicate values:

`SELECT DISTINCT country FROM sales;`

✅ This returns unique countries only.

---

## 🎯 Filtering Data with WHERE Clause

Filter records that meet `certain conditions`:

`SELECT coins FROM sales`

`WHERE amount < 20;`

✅ Returns coins where amount is less than 20.

----

## 🔗 Logical Operators — `AND`, `OR`, `NOT`
-- AND Example  
`SELECT name FROM people`

`WHERE gender = 'male' AND age < 18;`

-- OR Example  
`SELECT name FROM people`

`WHERE gender = 'male' OR age < 18;`

-- NOT Example  
`SELECT name FROM people`

`WHERE NOT gender = 'male';`

---

## 🧮 Multiple Conditions with Parentheses

-- Without parentheses  

`WHERE gender = 'male' OR age < 18 AND amount < 13;`

AND operator has more priority compared to OR operator, so when SQL reads the line it will `first` carryout age < 18 AND amount < 13 
Then combines the result with gender = 'male' using OR 
returns everything.

-- With parentheses for correct logic  

`WHERE (gender = 'male' OR age < 18) AND amount < 13;`

Evaluates (gender = 'male' OR age < 18) first

Then combines the result with amount < 13 using AND

---

## 📝 CHAR_LENGTH Function

Check the `length` of strings:

`SELECT CHAR_LENGTH(name) FROM people;`

✅ Boolean Values

SQL uses `TRUE` or `FALSE` values (also written as 1 and 0).

You can filter using:

`WHERE is_active IS TRUE;`

---

## ✅ NULL Handling

IS NULL: Checks if a column has no value.

IS NOT NULL: Checks if a column contains any value.

---

## ✅ Sorting Results

`SELECT * FROM table_name`

`ORDER BY column1 ASC, column2 DESC;`

`ASC: Ascending order (default).`

`DESC: Descending order.`

---

## ✅ Limiting Results

`SELECT * FROM table_name`

`LIMIT 5;`

Limits the output to 5 rows.

---

## ✅ Filtering Records

- IN — Use when checking multiple possible values:

`SELECT * FROM sales`

`WHERE city IN ('Warsaw', 'Berlin', 'Katowise');`

- BETWEEN — For a range of values (inclusive):

`SELECT * FROM sales`

`WHERE amount BETWEEN 7 AND 13;`

- LIKE — Pattern matching:

`% — any number of characters`

`_ — exactly one character`

Examples:

`WHERE name LIKE 'l%'      -- starts with 'l'`

`WHERE name LIKE '%l'      -- ends with 'l'`

`WHERE name LIKE '%l%'     -- contains 'l'`

`WHERE name LIKE '_l%'     -- 'l' is second character`

`WHERE name LIKE '%l_'     -- 'l' is second last character`

---

## ✅ String Functions

RIGHT() — Extract characters from the right:

`SELECT RIGHT(name, 3) FROM sales;  -- Last 3 characters of name`

---

## ✅ Aliases

AS — Rename column in result:

`SELECT amount AS no_item FROM sales;`

Working with Dates

`CURRENT_DATE — Returns today's date`

`CURRENT_TIME — Returns current time`

`NOW() — Returns current date and time`

Example with date manipulation:

`SELECT CURRENT_DATE + 1;  -- Tomorrow's date`

`SELECT CURRENT_DATE - 1;  -- Yesterday's date`

---

## ✅ Constraints

- UNIQUE — Ensures unique values in a column:

`CREATE TABLE products (
    product_id INT UNIQUE
);`

- CHECK — Enforces a condition on values:

`CREATE TABLE sales (
  amount INT CHECK (amount >= 13)
);`

Named CHECK constraint:

`CREATE TABLE sales (
  amount INT,
  CONSTRAINT chk_amount CHECK (amount >= 13)
);`

- DEFAULT — Sets a default value if none is provided:

`CREATE TABLE products (
  quantity INT DEFAULT 0
);`

---

## 🔢 Arithmetic Operations

You can perform basic arithmetic directly in SQL queries:

`SELECT price * quantity AS total_price FROM sales;`

Supported operators: `+, -, *, /`

---

## 🧮 Multiple Column Calculations

Combine multiple columns for complex calculations:

`SELECT (price * quantity) - discount AS final_price FROM sales;`

---

## ➗ Modulo Operator (%)

Returns the remainder of a division:

`SELECT id % 2 AS remainder FROM users;`

If result is 0 → divisible

If result is 1 → not divisible

---

## 🔁 ROUND Function

Rounds numbers to a specified decimal place:

`SELECT ROUND(price, 2) AS rounded_price FROM products;`

Behavior:

**Omitted**: rounds to whole number

**Positive value**: rounds right of the decimal

**Negative value**: rounds left of the decimal

---

## 🔐 Primary Key (PRIMARY KEY)

Uniquely identifies each row in a table

**Cannot be NULL or duplicated**

**Only one primary key per table**

Example:

`empID INT PRIMARY KEY;`

---

## 🔗 Foreign Key (FOREIGN KEY)

Links two tables using the PK of another table

Prevents deletion of values that are referenced in another table

Example:

`empPhoneNumb INT,`

`FOREIGN KEY (empPhoneNumb) REFERENCES employees(phone);`

REFERENCE Table_name(pk of that column)

---

## 🔄 AUTO_INCREMENT

Automatically increments column value by 1 for each new row

Only used with a key

Default start value is 1 (can be changed)

empID INT PRIMARY KEY AUTO_INCREMENT;

---

## 🤔 Conditional Logic with IF

Works like a ternary operator:

`SELECT name,`
       `IF(salary > 5000, 'High', 'Low') AS salary_status`
`FROM employees;`

**IF(salary > 5000, value_if_true, value_if_false)**

---

## 🔤 CONCAT Function

Combines multiple strings/columns into one

Syntax:

`SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;`

---

## 📅 Date Functions

- JULIANDAY(date)

Calculates the Julian day number for the given date — the count of days since January 1, 4713 BC. Useful for date arithmetic.

- STRFTIME(format, date)

Formats dates or extracts specific parts (year, month, day, etc.). Examples:

`SELECT DATE('2023-05-15 13:45:00');       -- Returns: 2023-05-15`

`SELECT DATE('now');                        -- Returns current date`

-- Extract year

`SELECT STRFTIME('%Y', '2023-05-15');     -- Returns: 2023`

-- Extract month

`SELECT STRFTIME('%m', '2023-05-15');     -- Returns: 05`

-- Extract day

`SELECT STRFTIME('%d', '2023-05-15');     -- Returns: 15`

-- Combine year and day

`SELECT STRFTIME('%Y:%d', '2023-05-15');  -- Returns: 2023:15`

Common format specifiers:

- %Y — Year (4 digits)

- %m — Month (01-12)

- %d — Day of month (01-31)

- %H — Hour (00-23)

- %M — Minute (00-59)

- %S — Second (00-59)

---

## Joins

Joins combine rows from two or more tables based on related columns:

- INNER JOIN

Returns only rows where matching keys exist in both tables.

- LEFT JOIN

Returns all rows from the left table, and matched rows from the right table (or NULL if no match).

- RIGHT JOIN

Returns all rows from the right table, and matched rows from the left table (or NULL if no match).

Syntax examples:

```sql
SELECT * FROM left_table INNER JOIN right_table
ON left_table.fk = right_table.pk;
```

`SELECT * FROM left_table LEFT JOIN right_table`

`ON left_table.fk = right_table.pk;`

`SELECT * FROM left_table RIGHT JOIN right_table`

`ON left_table.fk = right_table.pk;`

---

## Common SQL Functions

- COUNT() — counts rows or non-null values

- AVG() — average value

- MIN(), MAX() — minimum and maximum values

- STRFTIME() — format or extract date parts

- JULIANDAY() — date arithmetic based on Julian days

- CONCAT() — concatenate strings

---

## Built-In-Aggregate Functions:

- It receives a field as a input and calculates something over the field and returns the answer.
- Common aggregate functions
    - MAX - Returns the maximum amount
    - MIN - Returns the minimum amount
    - AVG - Returns the average amount
    - COUNT - Returns the total count of the field
    - SUM- Returns the total amount of the field
- When working with aggregate functions we often need to compare the rows with an aggregate value
    
    ```sql
    SELECT price - AVG(price) FROM items;
    This will not work because SQL doesnt allows mixing of row-level-data and
    aggregate result, hence we need to use nested queries
    
    SELECT price -(SELECT AVG(price) FROM items) FROM items;
    The aggregate function is first worked out and then the main query is done row by 
    row.
    ```
    
    - Nested Queries are mostly used in :
        - Comparing each value to the aggregate.
        - Calculating the percentage total.
        - Finding the difference from max or min values.

---

## Group By

- In order to calculate data for a specific group we use the group by method.
- If we want to filter the result based on aggregate we are going to use the **HAVING** keyword.
    - The reason we cannot use where is because, it doesn’t works on the aggregate result.
    - If we want we can combine the where + having and having is a keyword that will work as long as group by is written.
        
        ```sql
        SELECT category, AVG(price) FROM table1
        WHERE price > 25
        GROUP BY category
        HAVING AVG(price) > 40
        This will first go record by record and filter all the records for 
        which the price is greater than 25, and only after that will it run the GROUP BY clause and filter every category for which the average price is greater than 40.
        ```
        

---

## Subqueries

- It is used to combine multiple queries into one.
    
    ```sql
    SELECT id, salary
    FROM employees
    WHERE salary > (
        SELECT AVG(salary) --> inner query 
        FROM employees
    );--> rest is the outer query
    ```
    
    - A subquery helps us find employees who earn more than the company's average salary by first calculating the average (inner query) and then using that value to filter employees (outer query).

---

## UNION

- It is used for combining two different tables using select statement.
    - Make sure the number of columns are same or distinct or else an error will occur.
    - UNION ALL is used to return all the duplicate values present in the table.
        
        ```sql
        SELECT firstName, LastName FROM emp
        UNION
        SELECT firstName, LastName FROM customers
        ```
        

---

## Self Joins

- Its a way of stitching two tables together in order to find a specific result.
    - Syntax:
    
    ```sql
    SELECT alias1.column_name1, alias2.column_name2
    	FROM table_name AS alias1
    JOIN table_name AS alias2 ON alias1.column_name = alias2.related _column
    ```
    
    - Real world example:

---

## 🏁 Summary
✅ CREATE DATABASE — Create a New Database

✅ DROP DATABASE — Delete an Existing Database

✅ RENAME DATABASE — Rename a Database (Not directly supported, requires workaround)

✅ USE DATABASE — Select Active Database

✅ CREATE TABLE — Create New Table

✅ DROP TABLE — Delete a Table

✅ RENAME TABLE — Rename a Table

✅ Inserting Data - Add rows 

✅ Updating Data - Modifying data 

✅ Deleting Data - Deleting Unwanted data

✅ ALTER TABLE — Modify Table Structure

✅ SELECT + FROM — Basic Data Retrieval

✅ DISTINCT — Remove Duplicates

✅ WHERE — Apply Conditions

✅ AND / OR / NOT — Combine Conditions

✅ CHAR_LENGTH() — String Length

✅ Parentheses () — Control Logic Flow

✅ Boolean Filters

✅ Autocommit / Commit / Rollback

✅ NULL Handling

✅ Sorting Results

✅ Limiting Results

✅ Filtering Records - IN/BETWEEN/LIKE

✅ STRING FUNCTIONS - AS/DATE

✅ CONSTRAINTS - DATE/CHECK/DEFAULT

✅ Arithmetic Operations - Basic add/subtraction/multiplication/division

✅ Modulo Operator - %

✅ Logical Condition - if

✅ CONCAT - Combining columns

✅ DATE - STRFTIME/JULIANDAY

✅ JOINS - INNER/LEFT/RIGHT

✅ Functions

---
Notes : Made by Taha Asim
