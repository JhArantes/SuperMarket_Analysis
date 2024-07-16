
-- View the DataBase Columns

SELECT * FROM Main_Table


-- Requests for Work

SELECT city, gender, total, time FROM Main_Table

SELECT branch, total FROM Main_Table

SELECT DISTINCT Branch, City FROM Main_Table

SELECT branch, SUM(total) as total_sum
FROM Main_Table
GROUP BY branch;