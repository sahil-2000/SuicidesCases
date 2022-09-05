SELECT * FROM [dbo].[master];

--REMOVING UNWANTED COLLUMN

SELECT country,year,sex,age,suicides_no,population
into #sucide_cases
FROM [dbo].[master]

SELeCT * FROM #sucide_cases;

--total number of suicides cases per country
SELECT country,SUM(suicides_no) as total_suicide_cases
FROM #sucide_cases
GROUP BY country
order by SUM(suicides_no)


--total number of suicides cases group by age group
SELECT age,SUM(suicides_no) as total_suicide_cases
FROM #sucide_cases
GROUP BY age
order by SUM(suicides_no)

SELECT country,age,SUM(suicides_no) as total_suicide_cases
FROM #sucide_cases
GROUP BY country,age
order by country,age

SELECT country,year,SUM(suicides_no) as total_suicide_cases
FROM #sucide_cases
Group by country,year
--having country ='United States'
order by country,year

SELECT country,sex,SUM(suicides_no) as total_suicide_cases
FROM #sucide_cases
GROUP BY sex,country
order by country,sex

SELECT year,sex,SUM(suicides_no) as total_suicide_cases
FROM #sucide_cases
GROUP BY sex,year
order by SUM(suicides_no) desc
