# Global Diet, Obeisty & Covid-19 Mortality

## Machine Learning Sketch

### Primary Analysis

For this analysis, we will be using a supervised maching learning model on the Food Supply Quantity Data. We will be training two separate models for this analysis:

#### Analysis A: Global Diet & Obeisity

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

In this analysis will merge additional data with the existing dataframe that includes popluation data for each of the counties in the Food Supply Data Set. 

With the addition of Median Age and Population Density as Featurings, we will repeat Analysis A with an Unsupervise Machine Learning Model using Aglomerative Hierarachical Clustering. The intention of this analysis is to cluster the Food Supply Types by similarity to focus the features used in the Supervised Machine learning model. 
