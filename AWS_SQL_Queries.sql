select * from covid_deaths;

select * from food_supply_kcal;

select * from food_supply_quantity_kg;


-- LEFT OUTER JOIN of 2 tables (covid_deaths & food_supply_quantity_Kg)
SELECT cd.*, fkg.animal_products, fkg.animal_fats, fkg.aquatic_products, fkg.cereals_excluding_beer, 
fkg.eggs, fkg.seafood, fkg.fruits_excluding_wine, fkg.meat, fkg.milk_excluding_butter, 
fkg.miscellaneous, fkg.offals, fkg.oilcrops, fkg.pulses, fkg.spices, fkg.starchy_roots, 
fkg.stimulants, fkg.sugar_and_sweeteners, fkg.sugar_crops,fkg.treenuts, fkg.vegetable_oils, 
fkg.vegetables, fkg.vegetal_products, fkg.obesity, fkg.undernourished, fkg.confirmed, fkg.deaths, 
fkg.recovered,fkg.active, fkg.population
from covid_deaths as cd
FULL OUTER JOIN food_supply_quantity_kg as fkg
ON cd.country = fkg.country


-- LEFT OUTER JOIN of 2 tables (covid_deaths & food_supply_kcal)
SELECT cd.*, fkcal.animal_products, fkcal.animal_fats, fkcal.aquatic_products, fkcal.cereals_excluding_beer, 
fkcal.eggs, fkcal.seafood, fkcal.fruits_excluding_wine, fkcal.meat, fkcal.milk_excluding_butter, 
fkcal.miscellaneous, fkcal.offals, fkcal.oilcrops, fkcal.pulses, fkcal.spices, fkcal.starchy_roots, 
fkcal.stimulants, fkcal.sugar_and_sweeteners, fkcal.sugar_crops,fkcal.treenuts, fkcal.vegetable_oils, 
fkcal.vegetables, fkcal.vegetal_products, fkcal.obesity, fkcal.undernourished, fkcal.confirmed, fkcal.deaths, 
fkcal.recovered,fkcal.active, fkcal.population
from covid_deaths as cd
FULL OUTER JOIN food_supply_kcal as fkcal
ON cd.country = fkcal.country
