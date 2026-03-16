-- amazon_queries.sql
-- Exploratory queries for Amazon product pricing analysis

-- 1. Average rating, rating count, and discount by category
SELECT 
    category,
    AVG(CAST(rating AS FLOAT)) AS avg_rating,
    SUM(CAST(rating_count AS INT)) AS total_ratings,
    AVG(CAST(discount_percentage AS FLOAT)) AS avg_discount
FROM amazon_cleaned
GROUP BY category
ORDER BY avg_rating DESC;

-- 2. Average rating by price tier
-- Assuming you have a price_segment column
SELECT
    price_segment,
    AVG(CAST(rating AS FLOAT)) AS avg_rating,
    COUNT(*) AS product_count
FROM amazon_cleaned
GROUP BY price_segment
ORDER BY avg_rating DESC;

-- 3. Top 10 products by rating
SELECT
    product_id,
    product_name,
    category,
    rating,
    rating_count,
    discount_percentage
FROM amazon_cleaned
ORDER BY rating DESC, rating_count DESC
LIMIT 10;

-- 4. Discount efficiency: average rating by discount bucket
SELECT
    CASE
        WHEN discount_percentage < 10 THEN '0-10%'
        WHEN discount_percentage < 20 THEN '10-20%'
        WHEN discount_percentage < 30 THEN '20-30%'
        ELSE '30%+'
    END AS discount_bucket,
    AVG(CAST(rating AS FLOAT)) AS avg_rating,
    COUNT(*) AS product_count
FROM amazon_cleaned
GROUP BY discount_bucket
ORDER BY discount_bucket;

-- 5. Top categories by engagement score (rating * rating_count)
SELECT
    category,
    SUM(CAST(rating AS FLOAT) * CAST(rating_count AS INT)) AS engagement_score
FROM amazon_cleaned
GROUP BY category
ORDER BY engagement_score DESC;
