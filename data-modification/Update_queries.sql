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
