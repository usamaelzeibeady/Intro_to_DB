-- task_4.sql

-- Query to get the full description of the 'books' table without using DESCRIBE or EXPLAIN
SELECT 
    COLUMN_NAME AS 'Field',
    COLUMN_TYPE AS 'Type',
    IS_NULLABLE AS 'Null',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM 
    information_schema.columns
WHERE 
    TABLE_SCHEMA = DATABASE() 
    AND TABLE_NAME = 'books';
