-- Q1. What are the different genres?
SELECT DISTINCT prime_genre
  FROM data;

-- Q2. Which is the genre with the most apps rated?
SELECT prime_genre
       ,SUM(rating_count_tot) as rating_genre
  FROM data
 GROUP BY prime_genre
 ORDER BY rating_genre DESC;
 
-- Q3. Which is the genre with most apps?
-- Q4. Which is the one with least?
SELECT prime_genre
       ,COUNT(track_name) as count_genre
  FROM data
 GROUP BY prime_genre
 ORDER BY count_genre DESC;

-- Q5. Find the top 10 apps most rated.
SELECT track_name
       ,rating_count_tot
  FROM data
 ORDER BY rating_count_tot DESC
 LIMIT 10;

-- Q6. Find the top 10 apps best rated by users.
/*
There amay be many apps that were rated 5 stars, so to select the best rated, the number of rating was also considered.
*/
SELECT track_name
       ,user_rating
	   ,rating_count_tot
  FROM data
 ORDER BY user_rating DESC
          ,rating_count_tot DESC
 LIMIT 10;

-- Q7. Take a look at the data you retrieved in question 5. Give some insights.
CREATE TABLE top10_rated AS
SELECT track_name
       ,user_rating
       ,rating_count_tot
	   ,currency
	   ,price
	   ,prime_genre
	   ,lang_num
  FROM data 
 ORDER BY rating_count_tot DESC
 LIMIT 10;

SELECT prime_genre
       ,COUNT(prime_genre) AS count_genre
  FROM top10_rated
 GROUP BY prime_genre
 ORDER BY count_genre DESC;

--Q8. Take a look at the data you retrieved in question 6. Give some insights.
CREATE TABLE top10_best_rated AS
SELECT track_name
       ,user_rating
       ,rating_count_tot
	   ,currency
	   ,price
	   ,prime_genre
	   ,lang_num
  FROM data
 ORDER BY user_rating DESC
          ,rating_count_tot DESC
 LIMIT 10;

-- Q9. Now compare the data from questions 5 and 6. What do you see?
SELECT *
  FROM top10_rated;
 
SELECT *
  FROM top10_best_rated;

-- Q10. How could you take the top 3 regarding both user ratings and number of votes?
SELECT *
  FROM top10_best_rated
 LIMIT 3;
 
-- Q11. Do people care about the price of an app?
-- Create a temporary table with the top 100 most rated apps
CREATE TEMP TABLE price_apps AS
SELECT track_name
       ,size_bytes
	   ,currency
	   ,price
	   ,rating_count_tot
	   ,user_rating
	   ,prime_genre
	   ,lang_num
	   ,(CASE WHEN price = 0 THEN 1 ELSE 0 END) AS free_app
  FROM data
 ORDER BY rating_count_tot DESC
 LIMIT 100;

-- Check the results
SELECT *
  FROM price_apps;

-- Number of the top 100 most rated apps that are free
SELECT SUM(free_app)
  FROM price_apps;

-- Check the apps from the top 100 most rated apps that are not free
SELECT *
  FROM price_apps
 WHERE free_app = 0;