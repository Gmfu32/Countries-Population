
# Countries-Population

This project aims to analyze and visualize the population data of countries worldwide by scraping data from *Wikipedia, cleaning and analyzing it in MySQL, and then visualizing it using Power BI. The dataset includes population statistics for various countries for the years 2022 and 2023, with additional information on population growth and regions.

Project Overview

1. Data Scraping:  
The data is scraped from the https://en.wikipedia.org/wiki/List_of_countries_by_population_(United_Nations). Wikipedia page using Jupyter Notebook and Python libraries. The scraping process extracts relevant columns such as Country, Population_2022, Population_2023, Change_Percentage, and Region.

2. Data Cleaning and Analysis:  
   After scraping, the data is cleaned and processed in SQL. The cleaning involves:
   - Removing irrelevant rows like non-country data.
   - Handling missing values and formatting inconsistencies.
   - Calculating growth percentages and ensuring data integrity.

3. Data Visualization:  
   The cleaned dataset is imported into Power BI, where I created interactive dashboards to visualize:
   - Population growth rates for countries in 2023.
   - Country and population information.

 Key Insights;
- Identify countries with the highest population growth rates.
- Explore the impact of regional trends on population changes.
- Present findings in a way that can be easily understood by stakeholders through Power BI dashboards.

Tools & Libraries

- Python: BeautifulSoup, pandas, requests (for web scraping)
- MySQL: Data cleaning, aggregation, and transformation
- Power BI: DAX and interactive visualizations

