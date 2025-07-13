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

-- 9. Listings with the most reviews
SELECT id, name, neighbourhood, number_of_reviews
FROM airbnb_listings
ORDER BY number_of_reviews DESC
LIMIT 10;

-- 10. Price distribution percentiles (25th, median, 75th)
SELECT 
    percentile_cont(0.25) WITHIN GROUP (ORDER BY price) AS p25,
    percentile_cont(0.50) WITHIN GROUP (ORDER BY price) AS median,
    percentile_cont(0.75) WITHIN GROUP (ORDER BY price) AS p75
FROM airbnb_listings
WHERE price > 0;

-- 11. Count of listings with missing license info
SELECT COUNT(*) AS missing_license_count
FROM airbnb_listings
WHERE license IS NULL OR license = '';


-- Updated email-author to reflect contribution
