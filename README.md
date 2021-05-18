
# Global Diet, Population & Covid-19 Mortality

## Machine Learning Sketch
### Completed by: Holly Ouellette

#### Primary Analysis

For this analysis, we will be using a supervised machine learning model on the Food Supply Quantity Data. We will be training two separate models for this analysis:

##### Analysis A: Global Diet & Obesity

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

##### Analysis B: Obeisity & Covid-19 Mortality 

_Features(X)_:
  - Obesity	
  - Undernourished

_Target(y)_:
  - Deaths 

#### Secondary Analysis

In this analysis we will merge additional data with the existing DataFrame that includes population data for each of the countries in the Food Supply Data set. Once merged, we will use a supervised machine learning model on training two separate models for this analysis:

##### Analysis C: Population & Obesity

_Features(X)_:
  - median_age
  - population
  - population_density

_Target(y)_:
  - Obesity 

##### Analysis D: Population & Covid-19 Mortality 

_Features(X)_:
  - median_age
  - population
  - population_density

_Target(y)_:
  - Deaths 

## Github and Communications
### Completed by: Mike Blanchard

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

To validate this hypothesis, we will be using multiple datasets from kaggle that has a record of covid infected patients in the year 2019. The Dataset provides Daily level information on the number of Covid 2019 affected cases across the globe. For this Anlysis, we will be using SQLite which will serve the follwing benefits:
  - Lighweight in terms of setup, database administration, and required resources
  - serverless
  - Dynamic table types, which will help us store data, regardless of their datatypes

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
