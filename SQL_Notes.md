# 🗒️ SQL Beginner Notes  

## 📁 What is a Database?  
A database is a large bucket that stores data in an organized manner.  

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

## 🔗 Logical Operators — AND, OR, NOT
-- AND Example  
SELECT name FROM people
WHERE gender = 'male' AND age < 18;

-- OR Example  
SELECT name FROM people
WHERE gender = 'male' OR age < 18;

-- NOT Example  
SELECT name FROM people
WHERE NOT gender = 'male';

---

## 🧮 Multiple Conditions with Parentheses

-- Without parentheses  
WHERE gender = 'male' OR age < 18 AND amount < 13;  

-- With parentheses for correct logic  
WHERE (gender = 'male' OR age < 18) AND amount < 13;

---

## 📝 CHAR_LENGTH Function

Check the length of strings:

SELECT CHAR_LENGTH(name) FROM people;

✅ Boolean Values

SQL uses TRUE or FALSE values (also written as 1 and 0).

You can filter using:

WHERE is_active IS TRUE;

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
