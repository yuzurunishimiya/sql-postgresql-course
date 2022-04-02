-- simple select with WHERE x greather than 1000;
SELECT x, y
FROM table_name
WHERE x > 1000;


-- select with compound 
SELECT name, area
FROM cities
WHERE area BETWEEN 2000 AND 4000;


-- more select with compound where
SELECT name, area
FROM cities
WHERE area > 4000 OR name = 'Tokyo';


-- WHERE with list
SELECT name, manufacturer
FROM phones
WHERE manufacturer IN ('Samsung', 'Apple');


-- Calculation in WHERE
SELECT name,
    area / population AS population_density
FROM cities
WHERE area / population > 5000;


-- Update 
UPDATE cities
SET population = 89505000
WHERE name='Tokyo';


-- Delete
DELETE FROM cities
WHERE name='Tokyo';
