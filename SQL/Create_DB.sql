
CREATE DATABASE SuperMarket
 CONTAIMENT = NONE
ON 
(
	NAME = SuperMarket_data,
	--FILENAME = 'Caminho/arquivo',
	SIZE = 100MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 10MB
)
LOG ON 
(
    NAME = SuperMarket_log,
    --FILENAME = 'Caminho/arquivo',
    SIZE = 50MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB
);


 CREATE TABLE Main_Table (
    Invoice_ID CHAR(11),
    Branch CHAR(1),
    City VARCHAR(20),
    Customer_Type VARCHAR(10),
    Gender BIT,
    Product_Line VARCHAR(40),
    Unit_Price FLOAT,
    Quantity TINYINT,
    Tax_5_Percent FLOAT,
    Total FLOAT,  
    [Date] DATE,
    [Time] TIME,
    Payment VARCHAR(20),
    Cogs FLOAT,  
    Gross_Margin_Percent DECIMAL(10, 5) DEFAULT 4.761904762,
    Gross_Income FLOAT,  
    Rating DECIMAL(3, 1) 
);
