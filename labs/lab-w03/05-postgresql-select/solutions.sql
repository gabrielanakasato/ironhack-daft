-- Challenge 1 - Who Have Published What At Where?
-- Saves the result in a new table
CREATE TABLE au_title_pub AS
-- Joins information about `title_id`, `title` and `pub_name`
WITH title_pub AS (
	 SELECT title.title_id
	        ,title.title
	        ,pub.pub_name
	   FROM titles AS title
			LEFT JOIN
	             publishers AS pub
	             ON title.pub_id = pub.pub_id
),
-- Joins information about `au_id`, `title` and `pub_name`
au_title AS (
     SELECT au.au_id
	        ,tb.title
	        ,tb.pub_name
	   FROM titleauthor AS au
	        LEFT JOIN
	             title_pub AS tb
	             ON au.title_id = tb.title_id
)
-- Joins information about `au_id`, `au_lname`, `au_fname`, `title` and `pub_name`
SELECT au.au_id AS author_id
       ,au.au_lname AS last_name
	   ,au.au_fname AS first_name
	   ,auti.title
	   ,auti.pub_name AS publisher
  FROM authors AS au
       RIGHT JOIN
	         au_title AS auti
			 ON au.au_id = auti.au_id;

-- Challenge 2 - Who Have Published How Many At Where?
-- Count the number of titles published by each author in each publisher
WITH au_title_count AS (
	 SELECT author_id
		    ,publisher
		    ,COUNT(title) AS title_count
	   FROM au_title_pub
	  GROUP BY author_id, publisher
	  ORDER BY title_count DESC
)
-- Join the result of the subquery above with the authors' last and first names
SELECT atc.author_id
       ,au.au_lname AS last_name
	   ,au.au_fname AS first_name
	   ,atc.publisher
	   ,atc.title_count
  FROM au_title_count AS atc
       INNER JOIN
	        authors AS au
			ON atc.author_id = au.au_id
 ORDER BY atc.title_count DESC
          ,atc.author_id DESC;

-- Challenge 3 - Best Selling Authors
SELECT au.au_id AS author_id
       ,au.au_lname AS last_name
	   ,au.au_fname AS first_name
	   ,COUNT(ta.title_id) AS total
  FROM authors AS au
       LEFT JOIN
	        titleauthor AS ta
			ON au.au_id = ta.au_id
 GROUP BY au.au_id
          ,au.au_lname
		  ,au.au_fname
 ORDER BY total DESC
 LIMIT 3;
/*
There is 6 authors who published 2 books. The ones in the top 3 are the ones the PostgreSQL generated.
*/
  
-- Challenge 4 - Best Selling Authors Ranking
SELECT au.au_id AS author_id
       ,au.au_lname AS last_name
	   ,au.au_fname AS first_name
	   ,COUNT(ta.title_id) AS total
  FROM authors AS au
       LEFT JOIN
	        titleauthor AS ta
			ON au.au_id = ta.au_id
 GROUP BY au.au_id
          ,au.au_lname
		  ,au.au_fname
 ORDER BY total DESC;