--Select all for particular entities and arrange in decending order


SELECT *
FROM web_events
WHERE channel IN ('Organic', 'adwords')
AND occurred_at >= '2016-01-01' AND occurred_at < '2017-01-01'
ORDER BY occurred_at DESC;

-- Selecting all companies whose names do not start with 'c' and end with 's'
SELECT *
FROM acCOUNTS
WHERE name NOT LIKE ('C%') 
AND name NOT LIKE ('%s');

-- select a particular table where an entity has either argument
SELECT *
FROM orders
where (standard_qty = 0) AND (gloss_qty > 1000) OR (poster_qty > 1000);

-- Selecting from entities that start with a particular Alphabet and arranging in alphabetical order
SELECT *
FROM accounts
WHERE primary_poc Like ('T%') OR primary_poc like ('C%')
ORDER BY name ASC

-- Selecting the total unique accounts for two columns
SELECT 
(SELECT COUNT (DISTINCT id) 
FROM sales_reps) AS unique_sales_reps,
(SELECT COUNT (DISTINCT id) 
FROM accounts) AS unique_accounts;

-- Selecting 3 entities from a particular column in reference to 2 other different columns
SELECT name, website, primary_poc
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

