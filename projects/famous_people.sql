
-- People table
CREATE TABLE people (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

INSERT INTO people (first_name, last_name) VALUES
('Peter', 'Rabbit'),
('Alice', 'Wonderland'),
('Aladdin', 'Lampland'),
('Simba', 'Mufasa');

-- Titles table
CREATE TABLE people_titles (
    id INTEGER PRIMARY KEY,
    person_id INTEGER,
    title TEXT
);

INSERT INTO people_titles (person_id, title) VALUES
(1, 'Author'),
(2, 'Actor'),
(3, 'Magician'),
(4, 'Animation');

-- Network cost table
CREATE TABLE network_cost (
    person_id INTEGER,
    cost INTEGER
);

INSERT INTO network_cost (person_id, cost) VALUES
(2, 2005),
(3, 3005),
(1, 1005),
(4, 4005);

-- View raw tables
SELECT * FROM people;
SELECT * FROM people_titles;
SELECT * FROM network_cost;

-- Final JOIN query
SELECT 
    p.id,
    p.first_name,
    p.last_name,
    pt.title,
    nc.cost
FROM people p
JOIN people_titles pt ON p.id = pt.person_id
JOIN network_cost nc ON p.id = nc.person_id
ORDER BY p.id;
