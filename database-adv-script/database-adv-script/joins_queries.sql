-- This file contains SQL queries that demonstrate various types of joins.

-- Example of INNER JOIN
SELECT a.column1, b.column2
FROM table_a a
INNER JOIN table_b b ON a.common_column = b.common_column;

-- Example of LEFT JOIN
SELECT a.column1, b.column2
FROM table_a a
LEFT JOIN table_b b ON a.common_column = b.common_column;

-- Example of RIGHT JOIN
SELECT a.column1, b.column2
FROM table_a a
RIGHT JOIN table_b b ON a.common_column = b.common_column;

-- Example of FULL OUTER JOIN
SELECT a.column1, b.column2
FROM table_a a
FULL OUTER JOIN table_b b ON a.common_column = b.common_column;