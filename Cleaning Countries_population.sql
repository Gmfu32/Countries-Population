create database if not exists Countries;

use Countries;

CREATE TABLE Countries_population (
  Id int,
  Country VARCHAR(255),
  Population_2022 bigint,
  Population_2023 bigint,
  Change_percent float,
  Continent VARCHAR(100)
);


SELECT * 
FROM Countries_population;

delete from Countries_population
where Id = 0;  -- del the '238', 'Vatican City', '505', '496', '1.78', 'Europe' from Id = 0 


SELECT * 
FROM Countries_population;

update Countries_population
set Country= REGEXP_REPLACE(Country, '\\[.*?\\]', '')
where Country REGEXP '\\[.*?\\]'; --  remove the [a] text and brackets that exists beside Country_or_territory names 

SELECT * 
FROM Countries_population
where Id > 238; 

delete from Countries_population
where Id > 238; -- del extras/duplicates rows from table 

SELECT Country, COUNT(*)
from Countries_population
group by Country
having COUNT(*) > 1; -- confirmation 

SELECT * 
FROM Countries_population;

desc Countries_population;

SELECT Id,Country,
  format(Population_2022, 0) as Population_2022,
  format(Population_2023, 0) as Population_2023,
  concat(Change_percent, '%') as Change_percent,
  Continent FROM Countries_population; -- Formatting numbers with (, and %)

update countries_population
set Continent = 'North America'
where Country like 'United States%'; -- Correct continent for North and South America for detailed visualization 


update countries_population
set Continent = 'North America'                                                                      
where Country_or like 'Antigua and Barbuda%';

update countries_population
set Continent = 'North America'
where Country like 'Bahamas%';


update countries_population
set Continent = 'North America'
where Country like 'Barbados%';


update countries_population
set Continent = 'North America'
where Country like 'Belize%';


update countries_population
set Continent = 'North America'
where Country like 'Canada%';


update countries_population
set Continent = 'North America'
where Country like 'Costa Rica%';


update countries_population
set Continent = 'North America'
where Country like 'Cuba%';

update countries_population
set Continent = 'North America'
where Country like 'Dominica%';

update countries_population
set Continent = 'North America'
where Country like 'Dominican Republic%';


update countries_population
set Continent = 'North America'
where Country like 'Grenada%';

update countries_population
set Continent = 'North America'
where Country like 'Guatemala%';


update countries_population
set Continent = 'North America'
where Country like 'Haiti%';


update countries_population
set Continent = 'North America'
where Country like 'Haiti%';


update countries_population
set Continent = 'North America'
where Country like 'Honduras%';


update countries_population
set Continent = 'North America'
where Country  like 'Jamaica%';


update countries_population
set Continent = 'North America'
where Country like 'Mexico%';


update countries_population
set Continent = 'North America'
where Country like 'Nicaragua%';

update countries_population
set Continent = 'North America'
where Country like 'Panama%';


update countries_population
set Continent = 'North America'  
where Country like 'Saint Kitts and Nevis%';


update countries_population
set Continent = 'North America'  
where Country like 'Saint Lucia%';

update countries_population
set Continent = 'North America'  
where Country like 'Saint Vincent and the Grenadines%';


update countries_population
set Continent = 'North America'  
where Country like 'Trinidad and Tobago%';

-------------------------------------------------------
update countries_population
set Continent = 'South America'  
where Country like 'Argentina%';


update countries_population
set Continent = 'South America'  
where Country like 'Bolivia%';

update countries_population
set Continent = 'South America'  
where Country like 'Brazil%';


update countries_population
set Continent = 'South America'  
where Country like 'Chile%';


update countries_population
set Continent = 'South America'  
where Country like 'Colombia%';


update countries_population
set Continent = 'South America'  
where Country like 'Ecuador%';


update countries_population
set Continent = 'South America'  
where Country like 'Guyana%';


update countries_population
set Continent = 'South America'  
where Country like 'Paraguay%';


update countries_population
set Continent = 'South America'  
where Country like 'Peru%';


update countries_population
set Continent = 'South America'  
where Country like 'Suriname%';


update countries_population
set Continent = 'South America'  
where Country like 'Uruguay%';

update countries_population
set Continent = 'South America'  
where Country like 'Venezuela%';


delete from countries_population
where Country in ('Hong Kong (China)', 'Puerto Rico (United States)', 'RÃ©union (France)', 
  'Macao (China)', 'Western Sahara (disputed)', 'Guadeloupe (France)', 
  'Martinique (France)', 'Mayotte (France)', 'French Guiana (France)', 
  'New Caledonia (France)', 'French Polynesia (France)', 'CuraÃ§ao (Netherlands)', 
  'Guam (United States)', 'Aruba (Netherlands)', 'Jersey (United Kingdom)', 
  'U.S. Virgin Islands (United States)', 'Isle of Man (United Kingdom)', 
  'Cayman Islands (United Kingdom)', 'Bermuda (United Kingdom)', 
  'Guernsey (United Kingdom)', 'Greenland (Denmark)', 'Faroe Islands (Denmark)', 
  'American Samoa (United States)', 'Turks and Caicos Islands (United Kingdom)', 
  'Northern Mariana Islands (United States)', 'Sint Maarten (Netherlands)', 
  'British Virgin Islands (United Kingdom)', 'Gibraltar (United Kingdom)', 
  'Caribbean Netherlands (Netherlands)', 'Saint Martin (France)', 
  'Anguilla (United Kingdom)', 'Cook Islands (New Zealand)', 
  'Wallis and Futuna (France)', 'Saint BarthÃ©lemy (France)', 
  'Saint Pierre and Miquelon (France)', 'Saint Helena (United Kingdom)', 
  'Montserrat (United Kingdom)', 'Falkland Islands (United Kingdom)', 
  'Tokelau (New Zealand)', 'Niue (New Zealand)'); -- removing the territories 

commit;

alter table Countries_population
change column Countries Country VARCHAR(255);

alter table Countries_population
change column UN_continent_region Continent VARCHAR(255);


SELECT count(Continent)
FROM Countries_population
where Continent = 'South America'
;

SELECT * 
FROM Countries_population
where Country = 'Venezuela';

ALTER TABLE countries_population
ADD COLUMN Countries_Id INT;

SET @row = 0;
 

SELECT * 
FROM Countries_population;

alter table Countries_population
drop column Id;

alter table Countries_population
change column Countries_Id Id int;

alter table Countries_population
modify column Id int first;

ALTER TABLE countries_population
ADD PRIMARY KEY (Id);

show keys from countries_population where Key_name = 'PRIMARY';


delete FROM countries_population
WHERE Continent = NULL;

SELECT * 
FROM Countries_population;