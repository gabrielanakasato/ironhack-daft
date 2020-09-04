-- Challenge 1 - Most Profiting Authors

-- Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication
/*
Observations:
	- Advance calculation
    	advance = titles.advance * titleauthor.royaltyper / 100
	- Royalt of each sale calculation
		sales_royalty = titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100
*/

SELECT title_id
       ,au_id
	   -- Calculation for the advance
	   ,(subq_royalty.advance * subq_royalty.royaltyper / 100) :: real AS advance
	   -- Calculation for the sales royalty
	   ,(subq_royalty.price * subq_royalty.qty * subq_royalty.royalty / 100 * subq_royalty.royaltyper / 100) :: real AS sales_royalty
  FROM 
		-- Subquery to join the tables `titles`, `titleauthor` and `sales` and select the necessary columns
	   (SELECT title.title_id
		      ,ta.au_id
		      ,(title.advance :: real) AS advance
		      ,ta.royaltyper
		      ,(title.price :: real) AS price
		      ,s.qty
		      ,(title.royalty :: real) AS royalty
	     FROM titles AS title
		      LEFT JOIN
				   titleauthor AS ta
				   ON title.title_id = ta.title_id
			  LEFT JOIN
		           sales AS s
		           ON title.title_id = s.title_id
		ORDER BY title_id) AS subq_royalty
 ORDER BY title_id;

-- Step 2: Aggregate the total royalties for each title and author

SELECT title_id
       ,au_id
	   ,advance
	   ,SUM(sales_royalty) AS sales_royalty
  FROM
	   (SELECT title_id
			   ,au_id
			   -- Calculation for the advance
			   ,(subq_royalty.advance * subq_royalty.royaltyper / 100) :: real AS advance
			   -- Calculation for the sales royalty
			   ,(subq_royalty.price * subq_royalty.qty * subq_royalty.royalty / 100 * subq_royalty.royaltyper / 100) :: real AS sales_royalty
		  FROM 
				-- Subquery to join the tables `titles`, `titleauthor` and `sales` and select the necessary columns
			   (SELECT title.title_id
					  ,ta.au_id
					  ,(title.advance :: real) AS advance
					  ,ta.royaltyper
					  ,(title.price :: real) AS price
					  ,s.qty
					  ,(title.royalty :: real) AS royalty
				 FROM titles AS title
					  LEFT JOIN
						   titleauthor AS ta
						   ON title.title_id = ta.title_id
					  LEFT JOIN
						   sales AS s
						   ON title.title_id = s.title_id
				ORDER BY title_id) AS subq_royalty
		 ORDER BY title_id) AS roy_adv
 GROUP BY roy_adv.title_id, roy_adv.au_id, roy_adv.advance
 ORDER BY title_id;

-- Step 3: Calculate the total profits of each author

SELECT au_id, au_profit
FROM
        -- Create the column au_profit
		(SELECT au_id
			   ,advance + sales_royalty AS au_profit
		  FROM
			   -- Group sales_royalty by author
			   (SELECT title_id
					   ,au_id
					   ,advance
					   ,SUM(sales_royalty) AS sales_royalty
				  FROM
					   (SELECT title_id
							   ,au_id
							   -- Calculation for the advance
							   ,(subq_royalty.advance * subq_royalty.royaltyper / 100) :: real AS advance
							   -- Calculation for the sales royalty
							   ,(subq_royalty.price * subq_royalty.qty * subq_royalty.royalty / 100 * subq_royalty.royaltyper / 100) :: real AS sales_royalty
						  FROM 
								-- Join the tables `titles`, `titleauthor` and `sales` and select the necessary columns
							   (SELECT title.title_id
									  ,ta.au_id
									  ,(title.advance :: real) AS advance
									  ,ta.royaltyper
									  ,(title.price :: real) AS price
									  ,s.qty
									  ,(title.royalty :: real) AS royalty
								 FROM titles AS title
									  LEFT JOIN
										   titleauthor AS ta
										   ON title.title_id = ta.title_id
									  LEFT JOIN
										   sales AS s
										   ON title.title_id = s.title_id
								ORDER BY title_id) AS subq_royalty
						 ORDER BY title_id) AS roy_adv
				 GROUP BY roy_adv.title_id, roy_adv.au_id, roy_adv.advance
				 ORDER BY title_id) AS sum_roy
		 ORDER BY au_profit DESC) AS per_au
 WHERE au_profit NOTNULL
 LIMIT 3;
 
 -- Challenge 2 - Alternative Solution
 
 -- Join the tables `titles`, `titleauthor` and `sales` and select the necessary columns
CREATE TEMP TABLE tas AS
SELECT tt.title_id
	   ,ta.au_id
	   ,(tt.advance :: real) AS advance
	   ,ta.royaltyper
	   ,(tt.price :: real) AS price
	   ,s.qty
	   ,(tt.royalty :: real) AS royalty
  FROM titles AS tt
	   LEFT JOIN
		    titleauthor AS ta
			ON tt.title_id = ta.title_id
	   LEFT JOIN
			sales AS s
			ON tt.title_id = s.title_id
 ORDER BY title_id;

/*
Observations:
	- Advance calculation
    	advance = titles.advance * titleauthor.royaltyper / 100
	- Royalt of each sale calculation
		sales_royalty = titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100
*/

-- Table with values of advance and sales royalty
CREATE TEMP TABLE adv_roy AS
SELECT title_id
       ,au_id
	   -- Advance calculation
	   ,(advance * royaltyper / 100) AS advance_title
	   -- Royalt of each sale calculation
	   ,SUM(price * qty * royalty / 100 * royaltyper / 100) AS sales_royalty
  FROM tas
 GROUP BY title_id, au_id, advance_title
 ORDER BY title_id;

-- Select the top 3 authors with most profit
SELECT au_id
       ,advance_title + sales_royalty AS au_profit
  FROM adv_roy
 WHERE sales_royalty NOTNULL
 ORDER BY au_profit DESC
 LIMIT 3;

-- Challenge 3

CREATE TABLE most_profiting_authors AS
SELECT au_id
       ,advance_title + sales_royalty AS profit
  FROM adv_roy
 WHERE sales_royalty NOTNULL
 ORDER BY profit DESC;
 