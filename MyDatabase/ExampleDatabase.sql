CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    managerId INT,
    gender VARCHAR(10),
    age INT,
    department VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Alice', 7000, NULL, 'female', 29, 'Sales'),
(2, 'Bob', 5000, 1, 'male', 24, 'Marketing'),
(3, 'Charlie', 9000, NULL, 'male', 32, 'Management'),
(4, 'Diana', 4000, 3, 'female', 27, 'Marketing'),
(5, 'Evan', 3000, 2, 'male', 22, 'Sales');

CREATE TABLE Products (
    productId INT PRIMARY KEY,
    productName VARCHAR(50),
    price INT,
    country VARCHAR(50)
);

INSERT INTO Products VALUES
(101, 'Laptop', 1200, 'USA'),
(102, 'Phone', 800, 'Germany'),
(103, 'Headphones', 150, 'USA'),
(104, 'Monitor', 300, 'Germany'),
(105, 'Keyboard', 100, 'Poland');

CREATE TABLE Sales (
    saleId INT PRIMARY KEY,
    productId INT,
    employeeId INT,
    amount INT,
    saleDate DATE
);

INSERT INTO Sales VALUES
(201, 101, 1, 1, '2025-07-01'),
(202, 102, 2, 2, '2025-07-02'),
(203, 103, 3, 5, '2025-07-02'),
(204, 104, 4, 1, '2025-07-03'),
(205, 105, 5, 4, '2025-07-04');
