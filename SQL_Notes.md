# 🗒️ SQL Beginner Notes  

## 📁 What is a Database?  
A database is a large bucket that stores data in an organized manner.  

---

## 🗂️ Creating a Database

`CREATE DATABASE myDB;`

- Semicolon is needed at the end of every SQL statement.

- SQL syntax is case-insensitive (both uppercase & lowercase work).

---

## ➡️ Use a Database

`USE myDB;` -- Sets the database as the default schema

---

## ❌ Drop a Database

`DROP DATABASE myDB;`

---

## 🔒 Set Database to Read-Only Mode

`ALTER DATABASE myDB READ ONLY = 1;` 
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

`CREATE TABLE employees
(
    ID INT,
    name VARCHAR(50),
    price DECIMAL(5, 2)
);`

---

## ✏️ Modifying Tables

✅ Rename Table

`RENAME TABLE employees TO empInfo;`

---

## ➕ Add New Column

`ALTER TABLE employees`
`ADD priceID VARCHAR(15);`

---

## 📝 Rename a Column


`ALTER TABLE employees`
`RENAME COLUMN name TO empName;`

---

## 🛠️ Change Data Type of a Column

`ALTER TABLE employees`
`MODIFY COLUMN name VARCHAR(60);`

## 🔄 Change Column Position

`ALTER TABLE employees`
`MODIFY price DECIMAL(5,2) AFTER name;`

---

## ❌ Drop a Column

`ALTER TABLE employees`
`DROP COLUMN price;`

---

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

## 🏁 Summary
✅ SELECT + FROM — Basic Data Retrieval

✅ DISTINCT — Remove Duplicates

✅ WHERE — Apply Conditions

✅ AND / OR / NOT — Combine Conditions

✅ CHAR_LENGTH() — String Length

✅ Parentheses () — Control Logic Flow

✅ Boolean Filters

---
Notes : Made by Taha Asim
