--DATA MANIPULATION LANGUAGES

select * 

from [dbo].[pizza_sales$]

--1. Write a query to show the total revenue

SELECT SUM(total_price) AS [Total Revenue]
FROM [dbo].[pizza_sales$]

--2. Write a query to show the total number of Pizzas sold

SELECT SUM(quantity) AS [Total Pizzas Sold]
FROM [dbo].[pizza_sales$]

--3. Write a query to show the total number of orders

SELECT COUNT(DISTINCT order_id) AS [Total Orders]
FROM [dbo].[pizza_sales$]

--4. How many orders of Veggie pizza category were sold

SELECT SUM(quantity) AS [Veggie Pizzas Sold]
FROM [dbo].[pizza_sales$]
WHERE pizza_category = 'Veggie'


--5. How many of The Hawaiian Pizza and The Greek Pizza were sold

SELECT pizza_name, SUM(quantity) AS [Total Pizza Sold]
FROM [dbo].[pizza_sales$]
WHERE pizza_name IN ('The Hawaiian Pizza', 'The Greek Pizza')
GROUP BY pizza_name


--6. List of pizzas ordered in January 2015

SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE order_date BETWEEN '2015-01-01' AND '2015-01-31'


--7. List of pizzas ordered between 1st of November 2015 and 30th November 2015

SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE order_date BETWEEN '2015-11-01' AND '2015-11-30'


--8. What is the quantity of The Spinach Supreme Pizza sold

SELECT SUM(quantity) AS [Spinach Supreme Quantity]
FROM [dbo].[pizza_sales$]
WHERE pizza_name = 'The Spinach Supreme Pizza'


--9. List of Medium pizzas sold

SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE pizza_size = 'M'


--10. List of pizzas that sold for more than $12.5

SELECT DISTINCT pizza_name
FROM [dbo].[pizza_sales$]
WHERE unit_price > 12.5
