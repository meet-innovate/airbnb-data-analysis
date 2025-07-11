-- 1. Show first 10 records
SELECT * FROM airbnb_listings LIMIT 10;

-- 2. Count total listings
SELECT COUNT(*) FROM airbnb_listings;

-- 3. Top 10 neighbourhoods by listings
SELECT neighbourhood, COUNT(*) AS total_listings
FROM airbnb_listings
GROUP BY neighbourhood
ORDER BY total_listings DESC
LIMIT 10;

-- 4. Average price by room type
SELECT room_type, ROUND(AVG(price), 2) AS avg_price
FROM airbnb_listings
GROUP BY room_type;

-- 5. Listings available all year
SELECT COUNT(*) AS full_year_listings
FROM airbnb_listings
WHERE availability_365 = 365;
