-- View the DataBase Columns
-- Displays all columns and rows from the Main_Table
SELECT * FROM Main_Table;

--============================================================================================
-- REQUESTS
-- Selects the columns city, gender, total, and time from the Main_Table
SELECT city, gender, total, time FROM Main_Table;

--============================================================================================
-- BRANCHES AND CITIES

-- Selects distinct values of Branch and City from the Main_Table
SELECT DISTINCT Branch, City FROM Main_Table;

-- Total for Branch
-- Calculates the total sales (sum of total) for each branch
SELECT branch, SUM(total) AS Total_Branch
FROM Main_Table
GROUP BY branch;

-- Total Percent for Branch
-- Calculates the percentage of total sales for each branch relative to the overall total sales
SELECT 
    branch, 
    (SUM(total) * 100.0 / (SELECT SUM(total) FROM Main_Table)) AS Percentage
FROM Main_table
GROUP BY branch;

--============================================================================================
-- PRODUCT LINE

-- Product Type Percent
-- Calculates the percentage of each product line relative to the total number of product lines
SELECT 
    product_line,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Main_Table), 2) AS percentage
FROM 
    Main_Table
GROUP BY 
    Product_Line;

--============================================================================================
-- FILTERING DATA

-- Counts the number of occurrences of 'Fashion accessories' in the Product_Line column
SELECT Product_line, COUNT(*) AS Count
FROM Main_Table
WHERE Product_Line = 'Fashion accessories'
GROUP BY Product_Line;

-- Count Fashion
-- Counts the number of occurrences of 'Fashion accessories' in the Product_Line column (duplicate of the previous query)
SELECT 
    Product_Line, 
    COUNT(*) AS Count
FROM 
    Main_Table
WHERE 
    Product_Line = 'Fashion accessories'
GROUP BY 
    Product_Line;

--============================================================================================
-- PAYMENT

-- Calculates the total sales (sum of total) for each payment method
SELECT Payment, SUM(Total) AS Total
FROM Main_Table
GROUP BY Payment;

-- Calculates the percentage of each payment method relative to the total number of payment methods
SELECT Payment, (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM main_table)) AS Percentage
FROM Main_Table
GROUP BY Payment;
