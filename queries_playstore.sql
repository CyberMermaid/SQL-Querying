-- Find the app with an ID of 1880 --
1. SELECT app_name FROM analytics WHERE id = 1880;
-- Find the ID and app name for all apps that were last updated on August 01, 2018. --
2. SELECT id, app_name FROM analytics WHERE last_updated = '2018-01-08';
-- Count the number of apps in each category, e.g. “Family | 1972”. --
3. SELECT category, COUNT(*) FROM analytics GROUP BY category;
-- Find the top 5 most-reviewed apps and the number of reviews for each. --
4. SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
-- Find the app that has the most reviews with a rating greater than equal to 4.8.--
5. SELECT MAX(reviews) FROM analytics WHERE rating >= 4.8;
-- Find the average rating for each category ordered by the highest rated to lowest rated.--
6. SELECT category, AVG(rating) FROM analytics ORDER BY category DESC;
-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.--
7. SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.--
8. SELECT * FROM analytics WHERE min_installs <= 50 ORDER BY rating DESC;
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.--
9. SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.--
10. SELECT app_name FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
-- Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/ --
11. SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics) LIMIT 1;
-- Find the most expensive app (the query is very similar to #11).--
12. SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics) LIMIT 1;
-- Count all the reviews in the Google Play Store.--
13. SELECT COUNT (reviews) FROM analytics;
-- Find all the categories that have more than 300 apps in them. -- 
14. SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at least 100,000 times. Display the name of the app along with the number of reviews, the min_installs, and the proportion. --
15. 
