
# Global Diet, Population & Covid-19 Mortality

## Presentation

**Selected Topic**: Global Diet, Population and Covid-19 Mortality 


![](https://github.com/Mikeblanchard/Covid_Project/blob/main/Resources_mike/slides.gif)

[View Preliminary Slides Here](https://docs.google.com/presentation/d/11PeqzxKutvHuJR711tnT93JVy1oSyaQlpK-sssCEsJ0/edit?usp=sharing)

Along with the slides, we will be using a Github page to host our analysis, [located here](https://mikeblanchard.github.io/Covid_Page/)

**Topic selection insight:** In the wake of the Covid-19 pandemic, we chose to explore [specific data](https://github.com/Mikeblanchard/Covid_Project/tree/main/CSVs) relating to the potential influences that a country's resources, population and quality of life has on the likelihood of Covid-19 mortality.

**Desciption of the source of data**: Our [dataset](https://github.com/Mikeblanchard/Covid_Project/blob/mike/CSVs/Merged.csv) contains the calculated fat quantity, energy intake (kcal), food supply quantity (kg), and protein for different categories of food (all calculated as percentage of total intake amount). In addition to this, it includes the obesity and undernourished rate (also in percentage) for comparison. The end of the datasets also included the most up to date confirmed/deaths/recovered/active cases (also in percentage of current population for each country. Additional columns have been merged with the dataset to include population data, Human Development Index Rating (HDI) and GDP Per capita.

**Questions we hope to answer with the data:**
- Are we able to predict the level of deaths from Covid-19 based on a country's food supply and obesity level?
- Does a country's population facts effect the likelihood of death as an outcome of Covid-19?
- Can a country's HDI Rating, GDP & Life Expectancy be predictors of it's Covid-19 Death Outcomes?

**Null Hypothesis:** there is no significant relationship between Food Supply, Population Data, HDI/DPT and a country’s Covid-19 Death rate.

**Alternative Hypothesis:** A Country’s Death Rate can be predicted with > 75% accuracy by it’s Food Supply, Population, HDI Rating & GDP. 

**Description of Data Exploration Phase of the Project:**

The exploration phase of our project will be comprised of three main steps:

  1. Exploring the relationship between a country's Food Supply, Obesity level and their Covid Deaths per Million. 
  2. Exploring the relationship between a country's Population features and their Covid Deaths per Million.
  3. Exploring the relationship between HDI Rating, GDP Per capita, Life Expectancy and the each country's Covid Deaths per Million.

**Description of The Anlaysis Phase of the Project:**

Upon completion of the data exploration, we will analyze our data against the Key Performance Indicators(KPIs)* that we have identified as areas of interest in our analysis. During our analysis, we will also be applyinng Tableau to visualize the relationships that exist within our dataset, and to showcase the KPIs of interest.

####**KPIs*:**

  -Precision
  
  -Accuracy
  
 #### See "Description of Current Accuracy Score:" section below for details.

**Technologies Used**

_Software_: Google Colab, Python, HTML, SQLite, Tableau, AWS, Postgres DB<br>
_Libraries_: Pandas, Scikit-learn, SQLAlchemy, Path

## Machine Learning Model
### Completed by: Holly Ouellette

#### Machine Learning Model Code

All of the Machine Learning Model code that corresponds to the outline below can be found [here](https://github.com/Mikeblanchard/Covid_Project/tree/holly/Machine_Learning_Final). 

#### Description of preliminary data preprocessing:

1.	Import Food_Supply_Quantity_kcal_Data.csv

    - The columns that will not be used as features or targets in the analysis will be dropped from the data frame.   

2.	Import Deaths.csv

    - The columns that will not be used as features or targets in the analysis will be dropped from the data frame. 
    - Country names updated so that they math the formatting in the Food_Supply_Quantity_kg_Data.csv to set up it up to merge these DataFrames together. 

3.	Merge the cleaned Deaths.csv and Food_Supply_Quantity_kg_Data.csv on the “Country” column.

4.	Prior to running the machine learning analysis, any columns that were not selected as features for the machine learning analysis (more on this in the following section) were dropped from the dataset. 

5.	Engineered features (more on this below) to create a target column so that the Machine Learning Algorithm can predict the outcome based on the selected features. 

6.	Used the isnull().sum() functions to identify any NaN values in the dataset that would disrupt the Machine Learning Analysis.
  - Discovered that less that 4% of the rows in the DataFrame were affected by NaN values. 
  - Determined that dropping these rows would not create any significant bias in our analysis, and so the NaN rows were dropped from the DataFrame. 

#### Description of preliminary feature engineering & preliminary feature selection:

For our Machine Leaning Model, we will be using a supervised machine learning model on the final DataFrame preprocessed in the steps above. Prior to executing our analysis, our data required further feature engineering: 

##### Preliminary Feature Engineering

The target feature that we have selected for our Machine Learning Analysis is "Total Deaths Per Million".

Since this variable is continuous, we used that Pandas .cut() function to bucket the data into three possible outcomes so that it is compatible with our machine learning algorithm:

  - Total Deaths Per Million 0 - 1000 = "low" Deaths per Million
  - Total Deaths Per Million 1000 - 2000 = "moderate" Deaths per Million
  - Total Deaths Per Million 2000 - 3000 = "high" Deaths per Million

##### Feature Selection

The features for our selection were based on the three questions that we are hoping to answer with our data:
  
  - Are we able to predict the level of deaths from Covid-19 based on a country's food supply and obesity level?
  - Does a country's population facts effect the likelihood of death as an outcome of Covid-19?
  - Can a country's HDI Rating, GDP & Life Expectancy be predictors of it's Covid-19 Death Outcomes?
  - Is the machine learning model more accurate when all of the features are included? 

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
  - total_deaths_per_million	
  - population	
  - population_density	
  - median_age	
  - aged_65_older	
  - aged_70_older	
  - gdp_per_capita	
  - life_expectancy	
  - human_development_index
  - obesity

_Target(y)_:
  - deaths_outcomes
 
#### Description of how data was split into training and testing sets:

To split our data into training and testing sets, we will execute the train_test_split() function so that the data is split into a specific proportion of the original data sets. We will use the default training and testing set proportions:

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

#### Explanation of changes in model choice:

No changes were made to our Machine Learning model between the Segment 2 and Segment 3 deliverables. 

#### Description of how the model has been trained thus far:

  1. Once split into Training and Testing Sets, we used Scikit-learn's StandardScaler to standardize the data and fit the instance with the training data. Next the StandardScaler is used to scale the features with the transform() method.

  2. Next, we created the decision tree classifier instance so that we could train the "model" with the scaled training data.  

  3. Once trained, we used the .predict() function to make predictions using the scaled testing data.

_*No additional training will be taking place*_

#### Description of Current Accuracy Score:


<img align="right" src="https://github.com/Mikeblanchard/Covid_Project/blob/main/Machine_Learning_Final/Analysis/final_analysis_confusion_matrix.png" width=500>

In detail, the two Key Performance Indicatiors (KPIs) of focus for this analysis are _**Precision**_ and _**Accuracy**_. 
  - Precision was selected as a KPI since with this type of analysis, we are seeking to measure how _reliable_ a positive classification is versus it capturing all positive samples. 
  - Accuracy(/F1 Score) was selected so that we can determine how reliable our Machine Learning Model in making accurate predictions.

Our confusion matrix showcases the KIPas a whole, our Machine Learning Model performs with 75% accuracy and with 84% precision. This Machine Learning Model is extremely accurate when predicting whether a country will have Low Deaths Per Million, however it has weak Precision and Accuracy score for predicting High and Moderate Deaths Per Million.  

## Github and Communications
### Completed by: Mike Blanchard

A Github page was created to host our analysis https://mikeblanchard.github.io/Covid_Page/

We continue to use our Slack channel to communicate. Datasets, links and different ideas are posted there by team members for review and consideration. Alongside Slack, the four branches we created ([Mike's](https://github.com/Mikeblanchard/Covid_Project/tree/mike), [Holly's](https://github.com/Mikeblanchard/Covid_Project/tree/holly), [Arjun's](https://github.com/Mikeblanchard/Covid_Project/tree/arjun) and [Mariela's](https://github.com/Mikeblanchard/Covid_Project/tree/mariela)) are being used to upload production-ready code and trial efforts. As a team we decide which to commit and pull into the main branch of the project. Having decided to narrow our search, some of the CSV files we initially uplaoded were removed from the [CSV folder](https://github.com/Mikeblanchard/Covid_Project/tree/main/CSVs), and any relevant work to Arjun's merged CSV files were uploaded. 

### Continued Analysis and Visualizations

A new branch was [created](https://github.com/Mikeblanchard/Covid_Project/tree/Viz_Test) as a testing ground for new visualizations and images we may want to use. The most refined have been pulled here:

Intersting to see the change in which features were important between the correlation test and the Machine Learning Results:

![](https://github.com/Mikeblanchard/Covid_Project/blob/main/Resources_mike/Machine_Learning_Change.png)

A New interactive map detailed the categories we focused on was created. 
![](https://github.com/Mikeblanchard/Covid_Project/blob/Viz_Test/Resources_mike/World_map.png)

In which countries can be selected and compared, all colour aspects representing death rate to be visable at all times. 

![](https://github.com/Mikeblanchard/Covid_Project/blob/main/Resources_mike/World_map2.png)
A link to the Tableau public dashboard [provided here](https://public.tableau.com/views/MapofCovid-19Deaths/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)

We will be featuring some interactive visuals like the following map, which displays Covid-19 deaths by country as well as features of interest, such as the obesity rate, undernourished rate, GDP per capita, Human Development Index rating and population of the country:

![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/Map.gif)
*A link to the tableau public graphic provided [here](https://public.tableau.com/app/profile/mike.blanchard/viz/Map_16216990656660/Dashboard1)*

--------------------------------------------------------------------------------------------------------------------------------------------

A visualization of Canada from the total Food Supply kg CSV. Special attention is being paid to Sugar and Sweetners and their effect on Obesity rates in Covid fatalities.
- Categories were grouped here for ease of visualization, given the number of < 1% data. Each Feautre will be examined individually, perhaps grouped again based off correlation or the Machine Learning results. 

![](https://github.com/Mikeblanchard/Covid_Project/blob/mike/Resources_mike/final_project_graph%20_2.png)
*A link to the HTML code for the image [here](https://github.com/Mikeblanchard/Covid_Project/blob/mike/index.html)*

-----------------------------------------------------------------------------------------------------------------------------------------------

Prior to Holly's Machine Learning analysis, a correlation test was run across the our chosen features to examine how closely they correlate to our targets of Obesity, Undernourishment, Deaths and Death Rate.
A Pearson r test was used for this:

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


