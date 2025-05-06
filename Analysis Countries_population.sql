select *
from countries_population
;

select count(Country)
from countries_population;

select Country,sum(Population_2023) as World_Population_2023
from countries_population
group by Country
having Country = 'World';
 
select Country,sum(Population_2022) as World_Population_2022
from countries_population
group by Country
having Country = 'World';


select Country
from countries_population       
where Country != 'World'          
order by Population_2023 desc limit 10;     -- Top 10 most populated countries in 2023 


select Country,
((Population_2023-Population_2022)/ Population_2022) * 100  as Growth_Percentage
from countries_population
where Population_2022 > 0 and Population_2023 > 0  
order by Growth_Percentage desc limit 5;  -- Top 5 countries with lowest population decline (%) between 2022-2023


select Country,
((Population_2023-Population_2022) / Population_2022) * 100 as Growth_Percentage
from countries_population
where Population_2022 > 0 and Population_2023 > 0  -- To avoid division by zero
order by Growth_Percentage asc limit 5; -- Top 5 countries with highest population decline (%) between 2022-2023



SELECT Continent, SUM(Population_2023) as Total_Population_2023
FROM countries_population
GROUP BY Continent
having Continent != 'World' and Continent != 'Americas'
ORDER BY Total_Population_2023 DESC;    -- Total_Population_2023 by Continent in 2023


select Country,Population_2023
from countries_population
where Continent = 'Asia'
order by Population_2023 desc limit 1; -- most populated country by continent in 2023

select Country,Population_2023
from countries_population
where Continent = 'Europe'
order by Population_2023 desc limit 1;


select Country,Population_2023
from countries_population
where Continent = 'Africa'
order by Population_2023 desc limit 1;


select Country,Population_2023
from countries_population
where Continent = 'North America'
order by Population_2023 desc limit 1;


select Country,Population_2023
from countries_population
where Continent = 'South America'
order by Population_2023 desc limit 1;


select Country,Population_2023
from countries_population
where Continent = 'Oceania'
order by Population_2023 desc limit 1;


SELECT Id, Country,
  format(Population_2022, 0) as Population_2022,
  format(Population_2023, 0) as Population_2023,
  concat(Change_percent, '%') as Change_percent,
  Continent FROM Countries_population; -- Formatting numbers with (, and %)


SELECT * 
FROM Countries_population;

