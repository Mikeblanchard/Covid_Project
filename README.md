
# Global Diet, Population & Covid-19 Mortality

## Presentation

**Selected Topic**: Global Diet, Population and Covid-19 Mortality 


![](https://github.com/Mikeblanchard/Covid_Project/blob/main/Resources_mike/Slides.gif)

[View Preliminary Slides Here](https://docs.google.com/presentation/d/11PeqzxKutvHuJR711tnT93JVy1oSyaQlpK-sssCEsJ0/edit?usp=sharing)

**Topic selection insight:** In the wake of the Covid-19 pandemic, we chose to explore [specific data](https://github.com/Mikeblanchard/Covid_Project/tree/main/CSVs) relating to the potential influences that a country's resources (food supply, diet, GDP) has on the likelihood of Covid-19 mortality.

**Desciption of the source of data**: Our [dataset](https://github.com/Mikeblanchard/Covid_Project/blob/mike/CSVs/Merged.csv) contains the calculated fat quantity, energy intake (kcal), food supply quantity (kg), and protein for different categories of food (all calculated as percentage of total intake amount). In addition to this, it includes the obesity and undernourished rate (also in percentage) for comparison. The end of the datasets also included the most up to date confirmed/deaths/recovered/active cases (also in percentage of current population for each country. Additional columns have been merged with the dataset to include population data, Human Development Index Rating (HDI) and GDP Per capita.

**Questions we hope to answer with the data:**
  - Is there a relationship between obesity and deaths relating to Covid-19? 
  - Is there a relationship between a country's median age and its number of Covid-19 deaths?
  - Is there a relationship between a country's population size and its number of Covid-19 deaths?
  - Is there a relationship between a country's HDI Rating and its number of Covid-19 deaths?
  - Is there a relationship between a country's GDP Per capita and its number of Covid-19 deaths?

**Description of Data Exploration Phase of the Project:**

The exploration phase of our project will be comprised of three main steps:

  1. Exploring the relationship between a country's Food Supply and their Obesity Rate.
  2. Exploring the relationship between Obesity rates and deaths related to Covid-19.
  3. Exploring the relationship between Populations, HDI Rating and GDP Per capita and the number of Covid-19 related deaths per country. 

**Description of The Anlaysis Phase of the Project:**

Upon completion of the data exploration, we will analyze our data against the Key Performance Indicators that we have identified as areas of interest in our analysis. During our analysis, we will also be leveraging Tableau to visualize the relationships that exist within our dataset and to showcase our KPIs of interest.

## Machine Learning Model
### Completed by: Holly Ouellette

#### Machine Learning Model Code

All of the Machine Learning Model code that corresponds to the outline below can be found [here](https://github.com/Mikeblanchard/Covid_Project/tree/main/Machine_Learning). 

#### Description of preliminary data preprocessing:

1.	Import Food_Supply_Quantity_kg_Data.csv

    - The columns that will not be used as features or targets in the analysis will be dropped from the data frame. 
    - NaN Values will be identified – currently, there are few enough NaN values for us to confidently drop them with no concern over this skewing the final results. As a group, we are continuing to research best practices to deal with the NaN values should more arise during our data preprocessing.  

2.	Import Deaths.csv

    - The columns that will not be used as features or targets in the analysis will be dropped from the data frame. 
    - Country names updated so that they math the formatting in the Food_Supply_Quantity_kg_Data.csv to set up it up to merge these DataFrames together. 
    - Same as above, the NaN Values will be identified. As a group, we are continuing to research best practices to deal with the NaN values should more arise during our data preprocessing.  

3.	Merge the cleaned Deaths.csv and Food_Supply_Quantity_kg_Data.csv on the “Country” column.

#### Description of preliminary feature engineering and preliminary feature selection, including the decision-making process:

For our primary analysis, we will be using a supervised machine learning model on the Food Supply Quantity Data. The features for this analysis were chosen to answer the following question:

   - _Is there a relationship between obesity and deaths relating to Covid-19?_

##### Analysis A: Global Diet & Obesity

_Features(X)_:
  - Alcoholic Beverages	
  - Animal Products	
  - Animal fats	
  - Aquatic Products
  - Other Cereals - Excluding Beer	
  - Eggs	
  - Fish
  - Seafood	
  - Fruits - Excluding Wine	
  - Meat	
  - Milk - Excluding Butter	
  - Spices	
  - Starchy Roots Stimulants	
  - Sugar Crops	Sugar & Sweeteners	
  - Treenuts	
  - Vegetal Products	
  - Vegetables
  - Obeisity 

_Target(y)_:
  - Deaths 

In our Population Analysis we will merge additional data (Deaths.csv) with the existing DataFrame that includes population data for each of the countries in the Food Supply Data set. The features for this analysis were chosen to answer the following questions:
  - _Is there a relationship between a country's food supply and obesity?_
  - _Is there a relationship between a obesity and Covid-19-related mortality?_
  - _Is there a relationship between a country's age data and its number of Covid-19 deaths?_
  - _Is there a relationship between a country's population data and its number of Covid-19 deaths?_
  - _Is there a relationship between a country's HDI Rating & GDP Per capita and its number of Covid-19 deaths?_
    
##### Analysis B :Population & Covid-19 Mortality 

_Features(X)_:
  - median_age
  - population
  - population_density
  - HDI_Rating
  - GDP_Per_capita

_Target(y)_:
  - Deaths 
 
#### Description of how data was split into training and testing sets:

To split our data into training and testing sets, we will execute the train_test_split() function so that the data is plit into a specific proportion of the original data sets. We will use the default training and testing set proportions:

  - 75% Training
  - 25% Testing
    
#### Explanation of model choice, including limitations and benefits:

For our analysis, we will be using the **Decision Tree** model to perform regression analysis. 

_Some benefits of this model include:_

 - It does not require as much pre-processing of our data as compared to other regression models.
 - The NaN values present in the dataset will not have a significant impact on the process of building the decision tree. 
 - This model will support us in delivering a more simplistic presentation when the analysis is complete. 

_Drawbacks of this model include:_
 
 - The model could potentially become very complex.
 - Often requires more time to train the model. 
 - It is computationally expensive. 


## Github and Communications
### Completed by: Mike Blanchard

We continue to use our Slack channel to communicate. Datasets, links and different ideas are posted there by team members for review and consideration. Alongside Slack, the four branches we created ([Mike's](https://github.com/Mikeblanchard/Covid_Project/tree/mike), [Holly's](https://github.com/Mikeblanchard/Covid_Project/tree/holly), [Arjun's](https://github.com/Mikeblanchard/Covid_Project/tree/arjun) and [Mariela's](https://github.com/Mikeblanchard/Covid_Project/tree/mariela)) are being used to upload production-ready code and trial efforts. As a team we decide which to commit and pull into the main branch of the project. Having decided to narrow our search, some of the CSV files we initially uplaoded were removed from the [CSV folder](https://github.com/Mikeblanchard/Covid_Project/tree/main/CSVs), and any relevant work to Arjun's merged CSV files were uploaded. 

### Continued Analysis and Visualizations

A new branch was [created](https://github.com/Mikeblanchard/Covid_Project/tree/Viz_Test) as a testing ground for new visualizations and images we may want to use. The most refined have been pulled here:

We will be featuring some interactive visuals like the following, which displays Covid-19 deaths by country as well as features of interest, such as the obesity rate, undernourished rate, GDP per capita, Human Development Index rating and population of the country:

![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/Map.gif)
*A link to the tableau public graphic provided [here](https://public.tableau.com/app/profile/mike.blanchard/viz/Map_16216990656660/Dashboard1)*

--------------------------------------------------------------------------------------------------------------------------------------------

A visualization of Canada from the total Food Supply kg CSV. Special attention is being paid to Sugar and Sweetners and their effect on Obesity rates in Covid fatalities.
- Categories were grouped here for ease of visualization, given the number of < 1% data. Each Feautre will be examined individually, perhaps grouped again based off correlation or the Machine Learning results. 

![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/final_project_graph%20_2.png)
*A link to the HTML code for the image [here](https://github.com/Mikeblanchard/Covid_Project/blob/mike/index.html)*

-----------------------------------------------------------------------------------------------------------------------------------------------

Prior to Holly's Machine Learning analysis, a correlation test was run across the our chosen features to examine how closely they correlate to our targets of Obesity, Undernourishment, Deaths and Death Rate.
A pearsonr test was used for this:

![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/heatmap_image_final.png)
*A link to the Jupyter Notebook provided [here](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Heatmap_Correlation_Code.ipynb)*

We observe that the features resulting in Obesity are reciprocals of those associated with Undernourishment. This passes the logical test of the two being at odds with each other. The features with the highest correlation to Deaths (as a percentage of the population), are mostly age related. A near-strong correlation with higher average age countries, and countries with people aged 65 and 75. 

Interestingly, high GDP and Human Deveelopment Index countries are very much correlated with higher deaths. Perhaps this is an indication of more travel into the country, contributing to the spread and mortality of Covid-19. Population density was a bit of a surprise, having virtually no correlation with deaths from the disease we try to combat with social distancing.

Finally, we observe that none of the features we looked at had much correlation at all with death rate of people who contracted Covid-19, with the highest and lowest r values being 0.14 and -0.107. Study into medical procedure and availability may be the factor that determines rate at which people die from Covid, as it does not appear to be dietary.

The final thing we wanted to look at is obesity and undernourishment as it correlates to increased deaths. 

![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/obes_deaths.png)![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/under_deaths.png)

From this we will predict the Machine Learning model to find the following importances:
- Advanced age is a factor in a countries Covid-19 deaths
- Higher GDP and HDI countries are more likely to have higher deaths from Covid-19
- Larger population size and density is not a factor in a countries Covid-19 deaths
- Consumption of meat, sugar and sweetners and animal products have an effect on a countries obesity rates
- Obesity has an effect on a countries Covid-19 deaths

We will compare this to the Machine Learning results. A graphic or chart of the Machine Learning results is planned, as well as a comparison of the results and the correlation table. 

------------------------------------------------------------------------------------------------------------------------------------------------

## Database Sketch
### Completed by: Arjun Kannawar

Our hypothesis is that obesity has a substantial impact on people who have succumbed to Covid. To conduct this analysis, we will be using three datasets from kaggle that have a record of covid infected patients in the year 2019. The first data set contains data around deaths due to covid in countries around the world. The second dataset gives us a bird's eye view of the eating behaviour of people around the globe, while the third datset is a variation of the same where the data is captured in Kilo Calories as opposed to Kgs as seen in the second data set.  

### Technologies used
- AWS
- Postgres DB
- Google Colaborator
- Sql Alchemy
- Pandas

### Data Preprocessing before loading into the database:

The master tables 'covid_deaths', 'food_supply_quantity_kg', and 'food_supply_kcal' were taken from two different sources in Kaggle. To ensure that we can merge these tables successfully, the following steps were performed: 
- Excel manipulations to ensure all three csv files had the same number of country entries/rows, as we will be joining these tables using country as the primary key.
- Ensure the columns had the right data types to ensure a successful import into Postgres DB.
- Perform a check on the data to ensure they are of a consistent format.
- Dealing with 'null' values.

### Database Entity relationship diagram
![](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/ERD.png)
*A link to the ERD for the image [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/ERD.png)*

### Procuring AWS RDS Postgres Instance and connecting the DB to Google Colab

For this Anlysis, we will be using Postgres DB. We procured an Postgres RDS instance on the AWS cloud, wherein, we uploaded our three master tables. To perform Machine learning analysis, we used create_engine in SQL alchemy to connect AWS Postgres DB to Google Colab, therfore connecting the Postgres DB on AWS cloud to google colab.
*A link to google colab notebook for the code to steps mentioned above can be viewed [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/Covid_project_Database_integration.ipynb)*

### Defining the Database Schema. A view of the building blocks can be viewed [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/AWS_SQL_Schema.sql)*

### Data processing post connecting Postgres DB to Colab.
- JOIN 'covid_deaths' table with 'food_supply_quantity_kg' table using FULL OUTER JOIN
- JOIN 'covid_deaths' table with 'food_supply_kcal' table using FULL OUTER JOIN 

*The queries used for joining the different tables can be viewed [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/AWS_SQL_Queries.sql)*

*A link to google colab notebook demonstrating the code for the integration of the AWS Postgres DB, execution of the Join queries and importing the Data into a data frame for further analysis can be viewed [here](https://github.com/Mikeblanchard/Covid_Project/blob/arjun/Covid_project_Database_integration.ipynb)*

------------------------------------------------------------------------------------------------------------------------------------------------

## Technologies Used
### Completed by: Mariela Karadzhova 

Language: Python

#### Data Cleaning and Analysis
Working with Python and Jupyter Notebook, Pandas will be used to clean and organize the data for this project, and to perform our exploratory analyses.

#### Database Storage
SQLite is the database we intend to use for this project.

#### Machine Learning
We intend to use Jupyter Notebook to create two separate but similar supervised machine learning models for each analysis:

**Anaysis 1 - Global Diet & Obesity/ Obesity & Covid Mortality**

Supervised, testing and training the dataset to use the global diet features as predictors for obesity and then obesity as a predictor for covid mortality.

**Analysis 2 - Population & Obesity/ Population & Covid-19 Mortality**

Supervised, with additional predictors (age, population) as predicators of obesity and covid 19 mortality.

#### Dashboard
To visualize the results of this project we are going to use HTML and D3.js (nested charts), OR Tableau to create the final dashboard.
