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
