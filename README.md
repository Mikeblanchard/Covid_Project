
# Global Diet, Population & Covid-19 Mortality

## Machine Learning Sketch

### Primary Analysis

For this analysis, we will be using a supervised machine learning model on the Food Supply Quantity Data. We will be training two separate models for this analysis:

#### Analysis A: Global Diet & Obesity

_Features(X)_:
  - Alcoholic Beverages	
  - Animal Products	
  - Animal fats	
  - Aquatic Products
  - Other	Cereals - Excluding Beer	
  - Eggs	
  - Fish
  - Seafood	
  - Fruits - Excluding Wine	
  - Meat	
  - Milk - Excluding Butter	
  - Miscellaneous	Offals	
  - Oilcrops	
  - Pulses	
  - Spices	
  - Starchy Roots	Stimulants	
  - Sugar Crops	Sugar & Sweeteners	
  - Treenuts	
  - Vegetal Products	
  - Vegetable Oils	
  - Vegetables

_Target(y)_:
  - Obeisity 

#### Analysis B: Obeisity & Covid-19 Mortality 

_Features(X)_:
  - Obesity	
  - Undernourished

_Target(y)_:
  - Deaths 

### Secondary Analysis

In this analysis we will merge additional data with the existing DataFrame that includes population data for each of the countries in the Food Supply Data set. Once merged, we will use a supervised machine learning model on training two separate models for this analysis:

#### Analysis C: Population & Obesity

_Features(X)_:
  - median_age
  - population
  - population_density

_Target(y)_:
  - Obesity 

#### Analysis D: Population & Covid-19 Mortality 

_Features(X)_:
  - median_age
  - population
  - population_density

_Target(y)_:
  - Deaths 

# Global Diet, Population & Covid 19 Mortality

## Github and Communications

The first thing we did was set up a Slack channel for our group. It has been very active during its first week, and in fact, our topic was decided upon with several relevant CSV's over the Slack channel. It is a valuable communication tool and we will continue to use it.

Next, 4 branches for each group member was created along side the main branch on my Github page. Each member was to complete a markdown write up pertaining to their segment of the assignment. They will all be kept in their individual branches until we have satisfying, completed code so as to muddy up the main branch with too many commits. The only thing commited so far is a folder containing [the CSV's we will use](https://github.com/Mikeblanchard/Covid_Project/tree/main/CSVs).

The Gtihub branches are all linked here for reference: [Mike's branch](https://github.com/Mikeblanchard/Covid_Project/tree/mike), [Holly's branch](https://github.com/Mikeblanchard/Covid_Project/tree/holly), [Mariela's branch](https://github.com/Mikeblanchard/Covid_Project/tree/mariela) and [Arjun's branch](https://github.com/Mikeblanchard/Covid_Project/tree/arjun)


![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/final_project_graph%20_2.png)
*A link to the HTML code for the image [here](https://github.com/Mikeblanchard/Covid_Project/blob/mike/index.html)*

A visualization of Canada from the total calorie supply CSV. Special attention is being paid to Sugar and Sweetners and their effect on Obesity rates in Covid fatalities.

##### *Notes*

- CSVs are not importing directly to the graph due to a CORS error. Data manually entered for now. When working, there will be a dropdown selector for Country and graph type (Fat supply, kcal, Quantity and protein supply) to render a visualization of relationships. 
- Categories were grouped here for ease of visualization, given the number of < 1% data. Each Feautre will be examined individually, perhaps grouped again based off correlation. 


## Database Sketch

### Completed by: Arjun Kannawar

Our hypothesis is that obesity has a substantial impact on people who have succumbed to Covid. To conduct this analysis, we will be using three datasets from kaggle that have a record of covid infected patients in the year 2019. The first data set contains data around deaths due to covid in countries aroubnd the world. The second dataset gives us a bird'e eye view of the eating behaviour of people around the globe, while the third datset is a variation of the same where the data is captured in Kilo Calories as oppsed to Kgs as seen in the second data set.  

### Technologies used
- AWS
- Postgres DB
- Google Colaborator
- Sql Alchemy
- Pandas

### Data Preprocessing before loading into the database:

The master tables 'covid_deaths', 'food_supply_quantity_kg', and 'food_supply_kcal' were taken from two different sources in Kaggle. To ensure that we can merge these tables successfully, the following steps were performed: 
- Excel manipulations to ensure all three csv files had the same amount of country entires, as we will be joining these tables using country as the primary key.
- Ensure the columns had the right data types to ensure a successful import into Postgres DB.
- Perform a check on the data to esnure they are of consistent format.

### Database Entity relationship diagram
![](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/ERD.png)
*A link to the ERD for the image [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/ERD.png)*

### Procuring Postgres Instance and connecting the DB to Google Colab

For this Anlysis, we will be using Postgres DB. We procured an Postgres RDS instance on the AWS cloud, wherein, we uplaoded our three master tables. To perform Machine learning analysis, we used create_engine in SQL alchemy to connect AWS Postgres DB to Google Colab, therfore coneecting the Postgres DB on AWS cloud to google colab.
*A link to google colab notebook for the code to steps mentioned above can be viewed [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/Covid_project_Database_integration.ipynb)*

### Data processing post connecting Postgres DB to Colab.
- JOIN 'covid_deaths' table with 'food_supply_quantity_kg' table using FULL OUTER JOIN
- JOIN 'covid_deaths' table with 'food_supply_kcal' table using FULL OUTER JOIN 
*A link to google colab notebook for the code to join tables [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/Covid_project_Database_integration.ipynb)*
