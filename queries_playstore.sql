-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;

SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

SELECT category, COUNT(category) FROM analytics GROUP BY category;

SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

SELECT category, AVG(rating) FROM analytics GROUP BY category  ORDER BY AVG(rating) DESC;

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

SELECT * FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating DESC;

SELECT * FROM analytics WHERE rating < 3 AND reviews >= 10000;

SELECT * FROM analytics WHERE price >= .1 AND price <= 1 ORDER BY reviews DESC LIMIT 10;

SELECT * FROM analytics ORDER BY last_updated ASC LIMIT 1;

SELECT * FROM analytics ORDER BY price DESC LIMIT 1;

SELECT COUNT(reviews) AS total_reviews_all FROM analytics;

SELECT category, COUNT(category) AS count FROM analytics GROUP BY category HAVING COUNT(category) > 300;

SELECT app_name, min_installs/reviews FROM analytics WHERE min_installs >= 100000 ORDER BY min_installs/reviews DESC LIMIT 1;