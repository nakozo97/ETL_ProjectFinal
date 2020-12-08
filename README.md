
![](/images/fifaworldcuptrophy.jpg)
ETL : FIFA Rankings and World Happiness Analysis Project - Predicting the 2030 World Cup Host

- - -

### TEAM 

* Isaac Perez
* Michelle Risucci
* Alex Reyes

## ABOUT

ETL = Extract, transform, and load

Context : We are apart of the FIFA Data Team who is currently compiling data to help evaluate the 2030 FIFA World Cup bidding process. The FIFA World Cup is an international football tournament contested by the senior men's national teams from the FIFA governing body. 

The World Cup football tournament has been held every four years since 1930 (except 1942 and 1946). Due to its popularity, tourism attaction, and proven local host economic boost, countries around the world "bid" against each other to host the illustrious competition. 

Project Description : There are currently a few proposed bids from multiple European and South American countries at this time but our FIFA Data Team would like to evaluate other potential host candidates who have not officially submitted bids. Our ETL project hopes to use the FIFA World Team Rankings and the World Happiness Reports from 2015-2019 to aid the 2022 FIFA World Cup bidding committee in evaluating potential host candidates: GDP per capita, Social Support, Perceptions of Corruption, International FIFA Rankings, and Overall citizen "Happiness" rank. 

Project Goals : The 2022 FIFA World Cup Committee would ideally like to select a host country that has a strong supportive economy, a good ranked football team, and a good group of "Happy" football fans. Our group's project data aims to meet all those goals.

#### Extract

Our team used two different datasets from <www.Kaggle.com>. These two dataset links are located below: 

"FIFA World Ranking 1992-2020" https://www.kaggle.com/cashncarry/fifaworldranking

"World Happiness Report up to 2020" https://www.kaggle.com/mathurinache/world-happiness-report

#### Transform

Once the data was downloaded to our local GitHub repository, both datasets were imported and cleaned via the pandas - Python Data Analyis Library.

"FIFA World Ranking 1992-2020" Data Cleaning:

    * Dependencies: pandas / numpy / datetime
    * Imported "data/fifa_ranking_2020_11_26.csv" from /data folder. 
    * Extracted useful columns from original .csv. 
    * Cleaned up data from 2015 to 2019 via the .loc method. 
    * Identified unique countries and confederations. 
    * Grouped international football teams by confederation via the groupby method.
    * Developed a function to calculate the average FIFA World Ranking (2015-2019) by Confederation.
    * Developed a function to calculate the average FIFA World Ranking (2015-2019) by Country.
    * Converted new dataframe to "data/fifa_data_clean.csv" in the /data folder. 

"World Happiness Report up to 2020" Data Cleaning:

    * Dependencies: pandas / os / glob
    * Imported five happy_year.csv files from Happiness/Resources folder.
    * Extracted useful columns from the five original happy_year.csv files.
    * Cleaned up the data in each file by reorganizing and renaming columns.
    * Created a new dataframe with country and region to merge into three individual happy_year.csv files.
    * Evaluated the files for null values. 
    * Eliminated all null values. 
    * Converted new clean dataframes for each year and region dataframe into one dataframe "Happiness/Happy_All_years.csv".

#### Load

After the raw data cleaning, we created three individual tables in PostgreSQL. The tables created are as follows: 

    "fifa Base Table
        * Content Column_name [ id, rank, country_full, confederation, rank_date ] 

    "happinessYear Base Table
        * Content Column_name [ country, region, happinessrank, happinessscore, gdp, health, freedom, trust, generosity, happiessyear ]

    "happinessRegion Base Table
        * Content Column_name [ country, region ]


### Conclusion

Our data framework can be utilized to query any of the above mentioned "happiness" columns by fifaBaseTable.rank search and vise versa. 

### Acknowledgements

NOTE******** 

We did not create this data, only sourced via the <www.Kaggle.com> website. The credit goes to the following original authors and websites: 

Editors: John Helliwell, Richard Layard, Jeffrey D. Sachs, and Jan Emmanuel De Neve, Co-Editors; Lara Aknin, Haifang Huang and Shun Wang, Associate Editors; and Sharon Paculor, Production Editor

Citation:
Helliwell, John F., Richard Layard, Jeffrey Sachs, and Jan-Emmanuel De Neve, eds. 2020. World Happiness Report 2020. New York: Sustainable Development Solutions Network

Official FIFA website : https://www.fifa.com/fifa-world-ranking/ranking-table/men/

FIFA World Ranking Scraper Repository : https://github.com/cnc8/fifa-world-ranking

