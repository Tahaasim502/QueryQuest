-- ========================================
-- Title  : SQL Practice Problems - Beginner
-- Author : Bliz
-- Purpose: Practice basic SQL queries
-- ========================================

-- Using sample test database (adjust if needed)
USE practice_db;

-- Sample SELECT
SELECT 'SQL Practice Started' AS Status;

-- Sample Table Creation
CREATE TABLE IF NOT EXISTS sample_table (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample Data Insertion
INSERT INTO sample_table (id, name) VALUES (1, 'Test Entry');

-- Sample Query
SELECT * FROM sample_table;
