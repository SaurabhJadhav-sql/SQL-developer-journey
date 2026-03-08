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


-- Delete Queries Practice

-- Delete supplier who supplies Mouse
DELETE FROM supplier
WHERE item_supplied = 'Mouse';

-- Delete supplier from Hyderabad
DELETE FROM supplier
WHERE city = 'Hyderabad';

-- Delete supplier with lowest item price
DELETE FROM supplier
WHERE item_price = (
SELECT MIN(item_price)
FROM supplier
);

-- Delete supplier with highest item price
DELETE FROM supplier
WHERE item_price = (
SELECT MAX(item_price)
FROM supplier
);
