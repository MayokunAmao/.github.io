--DATA MANIPULATION LANGUAGE

SELECT *

FROM [dbo].[2025 QS_University_Rankings]

-- 1. Top 10 universities by Overall Score in 2025

SELECT TOP(10) Institution_Name, Overall_Score, Location 
FROM [dbo].[2025 QS_University_Rankings]
ORDER BY Overall_Score DESC
  
-- 2. Universities with biggest improvement in rank

SELECT top(10) Institution_Name, (RANK_2024 - RANK_2025) AS Rank_Change
FROM [dbo].[2025 QS_University_Rankings]
WHERE RANK_2024 IS NOT NULL AND RANK_2025 IS NOT NULL
ORDER BY Rank_Change DESC

-- 3. Average Academic Reputation Score by Region

  SELECT Region, AVG(Academic_Reputation_Score) AS Avg_Academic_Reputation
FROM [dbo].[2025 QS_University_Rankings]
GROUP BY Region

-- 4. Top 5 countries with the most universities ranked

  SELECT TOP (5) Location, COUNT(*) AS University_Count
FROM [dbo].[2025 QS_University_Rankings]
GROUP BY Location
ORDER BY University_Count DESC

-- 5. Top 3 region with the most universities ranked

SELECT TOP (3) Region, COUNT(*) AS University_Count
FROM [dbo].[2025 QS_University_Rankings]
GROUP BY Region
ORDER BY University_Count DESC

-- 6. Universities with Very High research intensity and Top 100

SELECT Institution_Name, Location, Region, RANK_2025
FROM [dbo].[2025 QS_University_Rankings]
WHERE RES# = 'VH' AND RANK_2025 <= 100

-- 7. Universities with International Faculty Score > 90
  
SELECT Institution_Name, International_Faculty_Score
FROM [dbo].[2025 QS_University_Rankings]
WHERE International_Faculty_Score > 90
ORDER BY International_Faculty_Score DESC

-- 8. Universities with Employment Outcomes Score > 90
  
SELECT Institution_Name, Employment_Outcomes_Score
FROM [dbo].[2025 QS_University_Rankings]
WHERE Employment_Outcomes_Score > 90
ORDER BY Employment_Outcomes_Score DESC

-- 9. Average Sustainability Score for universities in Europe
  
SELECT AVG(Sustainability_Score) AS Avg_Sustainability_Europe
FROM [dbo].[2025 QS_University_Rankings]
WHERE Region = 'Europe'

-- 10. Top 10 universities by Faculty Student Score
  
SELECT TOP 10 Institution_Name, Faculty_Student_Score
FROM [dbo].[2025 QS_University_Rankings]
ORDER BY Faculty_Student_Score DESC

