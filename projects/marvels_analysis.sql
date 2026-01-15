-- Project 2: Marvel Characters Analysis

-- Create table
CREATE TABLE marvels (
    id INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m REAL,
    weight_kg REAL,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_projection INTEGER,
    fighting_skills INTEGER
);

-- Insert data
INSERT INTO marvels VALUES
(1, 'Spider Man', 1, 'Good', 'Male', 1.78, 75.75, 'USA', 4, 4, 3, 3, 1, 4),
(2, 'Iron Man', 20, 'Neutral', 'Male', 1.98, 102.58, 'USA', 6, 6, 5, 6, 6, 4),
(3, 'Hulk', 18, 'Neutral', 'Male', 2.44, 635.29, 'USA', 1, 7, 3, 7, 5, 4),
(4, 'Wolverine', 3, 'Good', 'Male', 1.60, 88.46, 'Canada', 2, 4, 2, 4, 1, 7),
(5, 'Thor', 5, 'Good', 'Male', 1.98, 290.30, 'Asgard', 2, 7, 7, 6, 6, 4),
(6, 'Green Goblin', 91, 'Bad', 'Male', 1.93, 174.63, 'USA', 4, 4, 3, 4, 3, 3),
(7, 'Magneto', 11, 'Neutral', 'Male', 1.88, 86.18, 'Germany', 6, 3, 5, 4, 6, 4),
(8, 'Thanos', 47, 'Bad', 'Male', 2.01, 446.79, 'Titan', 6, 7, 7, 6, 6, 4),
(9, 'Loki', 32, 'Bad', 'Male', 1.93, 238.14, 'Jotunheim', 5, 5, 7, 6, 6, 3),
(10, 'Doctor Doom', 19, 'Bad', 'Male', 2.01, 188.24, 'Latveria', 6, 4, 5, 6, 6, 4);

-- Aggregates
SELECT 
    AVG(weight_kg) AS avg_weight,
    MAX(speed) AS max_speed
FROM marvels;

-- Weakest strength
SELECT name, strength
FROM marvels
ORDER BY strength ASC
LIMIT 1;

-- Grouped analysis
SELECT hometown, AVG(height_m) AS avg_height
FROM marvels
GROUP BY hometown
HAVING avg_height < 2;

-- Intelligence filter
SELECT name, gender, intelligence
FROM marvels
WHERE intelligence > 3 AND gender = 'Female';

-- Speed categorization
SELECT 
    name,
    speed,
    CASE 
        WHEN speed > 6 THEN 'Fast'
        WHEN speed > 3 THEN 'Normal'
        ELSE 'Slow'
    END AS speed_level
FROM marvels;

-- Speed distribution
SELECT 
    CASE 
        WHEN speed > 6 THEN 'Fast'
        WHEN speed > 3 THEN 'Normal'
        ELSE 'Slow'
    END AS speed_level,
    COUNT(*) AS count_characters
FROM marvels
GROUP BY speed_level
ORDER BY count_characters DESC;
