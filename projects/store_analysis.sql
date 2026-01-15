-- Project 1: Store Sales Analysis

-- Create Store table
CREATE TABLE Store (
    sn INTEGER,
    item TEXT,
    quantity INTEGER,
    price INTEGER
);

-- Insert sample data
INSERT INTO Store VALUES 
(1, 'Pulsar', 5, 1000),
(2, 'Ray', 4, 500),
(3, 'TVS', 6, 200),
(4, 'FZ', 2, 900),
(5, 'Enfield', 1, 1500),
(6, 'Pulsar', 3, 850);

-- View all records
SELECT * FROM Store;

-- Items priced below 1000 ordered by quantity
SELECT *
FROM Store
WHERE price < 1000
ORDER BY quantity DESC;

-- Total quantity per item
SELECT item, SUM(quantity) AS total_quantity
FROM Store
GROUP BY item;

-- Maximum quantity per item
SELECT item, MAX(quantity) AS max_quantity
FROM Store
GROUP BY item;

-- Minimum price per item
SELECT item, MIN(price) AS min_price
FROM Store
GROUP BY item;

-- Overall metrics
SELECT SUM(price) AS total_price FROM Store;
SELECT COUNT(quantity) AS item_count FROM Store;
SELECT SUM(quantity) AS total_quantity FROM Store;

-- Total revenue
SELECT SUM(quantity * price) AS total_revenue
FROM Store;
