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


-- Update Queries Practice

-- Increase the price of Keyboard by 200
UPDATE supplier
SET item_price = item_price + 200
WHERE item_supplied = 'Keyboard';

-- Increase price of all Processors by 600
UPDATE supplier
SET item_price = item_price + 600
WHERE item_supplied = 'Processor';

-- Increase price of suppliers from Delhi by 1000
UPDATE supplier
SET item_price = item_price + 1000
WHERE city = 'Delhi';

-- Update price of the cheapest item by adding 500
UPDATE supplier
SET item_price = item_price + 500
WHERE item_price = (
SELECT MIN(item_price)
FROM supplier
);
