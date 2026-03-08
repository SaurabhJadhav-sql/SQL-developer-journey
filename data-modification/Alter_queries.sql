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
