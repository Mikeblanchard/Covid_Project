# Global Diet, Population & Covid-19 Mortality

## Machine Learning Model

### Description of Preliminary Data Preprocessing

1.	Import Food_Supply_Quantity_kg_Data.csv

    - The columns that will not be used as features or targets in the analysis will be dropped from the data frame. 
    - NaN Values will be identified – currently, there are few enough NaN values for us to confidently drop them with no concern over this skewing the final results. As a group, we are continuing to research best practices to deal with the NaN values should more arise during our data preprocessing.  

2.	Import Deaths.csv

    - The columns that will not be used as features or targets in the analysis will be dropped from the data frame. 
    - Country names updated so that they math the formatting in the Food_Supply_Quantity_kg_Data.csv to set up it up to merge these DataFrames together. 
    - Same as above, the NaN Values will be identified. As a group, we are continuing to research best practices to deal with the NaN values should more arise during our data preprocessing.  

3.	Merge the cleaned Deaths.csv and Food_Supply_Quantity_kg_Data.csv on the “Country” column.

Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
Description of how data was split into training and testing sets
Explanation of model choice, including limitations and benefits
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

