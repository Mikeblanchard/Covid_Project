# Global Diet, Population & Covid-19 Mortality 

## Machine Learning Model
### Completed by: Holly Ouellette 

#### Description of Preliminary Data Preprocessing

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
  - _Is there a relationship between a country's median age and its number of Covid-19 deaths?_
  - _Is there a relationship between a country's population size and its number of Covid-19 deaths?_
  - _Is there a relationship between a country's HDI Rating and its number of Covid-19 deaths?_
  - _Is there a relationship between a country's GDP Per capita and its number of Covid-19 deaths?_
    
##### Analysis B :Population & Covid-19 Mortality 

_Features(X)_:
  - median_age
  - population
  - population_density
  - HDI_Rating
  - GDP_Per_capita

_Target(y)_:
  - Deaths 
  -
#### Description of how data was split into training and testing sets

To split our data into training and testing sets, we will execute the train_test_split() function so that the data is plit into a specific proportion of the original data sets. We will use the default training and testing set proportions:

  - 75% Training
  - 25% Testing
    
#### Explanation of model choice, including limitations and benefits


