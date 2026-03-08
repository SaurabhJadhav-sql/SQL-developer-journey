-- Create Table

CREATE TABLE supplier (
    sup_no VARCHAR(5) PRIMARY KEY,
    sup_name VARCHAR(50),
    item_supplied VARCHAR(50),
    item_price INT,
    city VARCHAR(50)
);

-- Insert Data

INSERT INTO supplier VALUES
('S1','Suresh','Keyboard',400,'Hyderabad'),
('S2','Kiran','Processor',8000,'Delhi'),
('S3','Mohan','Mouse',350,'Delhi'),
('S4','Ramesh','Processor',9000,'Bangalore'),
('S5','Manish','Printer',6000,'Mumbai'),
('S6','Srikanth','Processor',8500,'Chennai');

-- Display table

SELECT * FROM supplier;


-- Alter Table Queries Practice

-- Add a new column
ALTER TABLE supplier
ADD contact_no INT;

-- Change datatype of contact_no
ALTER TABLE supplier
ALTER COLUMN contact_no TYPE BIGINT;

-- Add email column
ALTER TABLE supplier
ADD email VARCHAR(50);

-- Remove email column
ALTER TABLE supplier
DROP COLUMN email;
