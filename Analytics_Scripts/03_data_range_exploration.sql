/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/



-- Find the date of the first and last order

SELECT 
	MIN(order_date) AS first_order_date,
	MAX(order_date) AS last_order_date,
	DATEDIFF(month,MIN(order_date),MAX(order_date)) AS order_range_months
FROM gold.fact_sales;


-- Find the yougest and oldest cutomer 

SELECT 
	MIN(birthdate) AS oldest_birthdate,
	DATEDIFF(year,MIN(birthdate),GETDATE()) AS oldest_customer_age,
	MAX(birthdate) AS yougest_birthdate,
	DATEDIFF(year,MAX(birthdate),GETDATE()) AS youngest_customer_age
FROM gold.dim_customers;