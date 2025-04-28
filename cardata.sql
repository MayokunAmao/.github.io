--DATA MANIPULATION LANGUAGE

--1.Write an SQL Query to read Car Data.

select *
from [dbo].['Car Data$']

--2. Write an SQL Query to count total cars records.

select count(*) as Total_Cars
from [dbo].['Car Data$']

--3. Write an SQL Query to count how many cars will be available in 2023.

Select count (*) as [2023 Available Cars]
from [dbo].['Car Data$']
Where year = 2023

--4. Write an SQL Query to count how many cars is available in 2020,2021,2022.

SELECT year, count (*) as [Number of available cars]
from [dbo].['Car Data$']
Where year IN (2020, 2021, 2022)
Group by year

--5. Write an SQL Query to print the total of all cars by year. 

Select year, count(*) as [Total Cars]
from [dbo].['Car Data$']
group by year
order by year desc

--6. Write an SQL Query to count how many diesel cars will be there in 2020?

Select count (*) as [2020 Diesel Cars]
from [dbo].['Car Data$']
Where year = 2020 AND fuel = 'Diesel'

--7. Write an SQL Query to count how many petrol cars will be there in 2020?

Select count (*) as [2020 Petrol Cars]
from [dbo].['Car Data$']
Where year = 2020 AND fuel = 'petrol'

--8. Write an SQL Query to print ALL the fuel cars (petrol, diesel, and CNG) by year

Select 
		year, 
		fuel, 

count(*) as Total_Cars
from [dbo].['Car Data$']
where fuel IN ('Petrol', 'Diesel', 'CNG')
group by year, fuel
order by year, fuel

--9. Write an SQL Query Manager to show there was more than 100 cars in a given year, which year had more than 100 cars?

select year, count (*) as [Total Cars]
from [dbo].['Car Data$']
group by year
having count(*) > 100


--10. Write an SQL Query to show all cars count details between 2015 and 2023-complete list.

select year, count(*) as [Total cars]
from [dbo].['Car Data$']
where year BETWEEN 2015 AND 2023
group by year
order by year asc

--11.Write an SQL Query showing all cars details between 2015 and 2023-complete list.

select *
from [dbo].['Car Data$']
where year BETWEEN 2015 AND 2023
order by year
