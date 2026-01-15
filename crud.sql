-- Create Laptop table
CREATE TABLE Laptop (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    brand TEXT,
    usage TEXT,
    ram INTEGER
);

-- Update RAM
UPDATE Laptop
SET ram = 16
WHERE brand = 'DEll';

-- Delete records
DELETE FROM Laptop
WHERE usage = 'Off';

-- Alter table
ALTER TABLE Laptop ADD price INTEGER;

-- Insert new record
INSERT INTO Laptop (brand, usage, ram, price)
VALUES ('HP', 'Off', 16, 85000);
