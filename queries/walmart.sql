-- Business Problems

--Q1 For each payment method find the number of transactions, number of qty sold

SELECT 
	 payment_method,
	 COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart_sales
GROUP BY payment_method

--Q2 Identify the highest-rated category in each branch, display the branch, category and AVG rating

SELECT * 
FROM
(	
	SELECT 
		branch,
		category,
		ROUND (AVG(rating),2) AS avg_rating,
		RANK() OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) AS rank
	FROM walmart_sales
	GROUP BY branch, category
)
WHERE rank = 1

-- Q.3 Identify the busiest day for each branch based on the number of transactions

SELECT 
	*
FROM
	(
	    SELECT
	        branch,
	        TO_CHAR(date, 'Day') AS day_name,
	        COUNT(*) AS no_transactions,
	        RANK() OVER ( PARTITION BY branch ORDER BY COUNT(*) DESC ) AS rank
	    FROM walmart_sales
	    GROUP BY branch, TO_CHAR(date, 'Day')
	) AS ranked_days
WHERE rank = 1;

-- Q.4 Calculate the total quantity of items sold per payment method

SELECT
    payment_method,
    SUM(quantity) AS total_quantity
FROM walmart_sales
GROUP BY payment_method;

-- Q.5 Determine the average, minimum, and maximum rating of each category for each city

SELECT
    city,
    category,
    ROUND ( AVG(rating), 2 ) AS average_rating,
    ROUND ( MIN(rating), 2 ) AS min_rating,
    ROUND ( MAX(rating), 2 ) AS max_rating
FROM walmart_sales
GROUP BY city, category;

-- Q.6
-- Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin).
-- List category and total_profit, ordered from highest to lowest profit.

SELECT
    category,
    ROUND ( SUM(unit_price * quantity * profit_margin), 2 ) AS total_profit
FROM walmart_sales
GROUP BY category
ORDER BY total_profit DESC;

-- Q.7
-- Determine the most common payment method for each Branch.
-- Display Branch and the preferred_payment_method.

WITH cte AS
(
	SELECT
		branch,
		payment_method,
		COUNT(*) AS total_trans,
		RANK() OVER ( PARTITION BY branch ORDER BY COUNT(*) DESC ) AS rank
	FROM walmart_sales
	GROUP BY branch, payment_method
)

SELECT
    branch,
    payment_method AS preferred_payment_method
FROM cte
WHERE rank = 1;

-- Q.8
-- Categorize sales into 3 groups: MORNING, AFTERNOON, and EVENING.
-- Find out each shift and the number of invoices.

SELECT
    CASE
        WHEN EXTRACT(HOUR FROM time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS total_invoices
FROM walmart_sales
GROUP BY shift
ORDER BY total_invoices DESC;

-- Q.9
-- Identify the 5 branches with the highest decrease ratio in
-- revenue compared to last year (current year: 2023 and last year: 2022)

WITH revenue_2022 AS
	(
	    SELECT
	        branch,
	        SUM(total) AS revenue
	    FROM walmart_sales
	    WHERE EXTRACT(YEAR FROM date) = 2022
	    GROUP BY branch
	),

revenue_2023 AS
	(
	    SELECT
	        branch,
	        SUM(total) AS revenue
	    FROM walmart_sales
	    WHERE EXTRACT(YEAR FROM date) = 2023
	    GROUP BY branch
	)

SELECT
    ls.branch,
    ls.revenue AS last_year_revenue,
    cs.revenue AS current_year_revenue,
    ROUND( ( (ls.revenue - cs.revenue) / ls.revenue ) * 100, 2 ) AS revenue_decrease_ratio
FROM revenue_2022 AS ls
JOIN revenue_2023 AS cs
    ON ls.branch = cs.branch
WHERE ls.revenue > cs.revenue
ORDER BY revenue_decrease_ratio DESC
LIMIT 5;