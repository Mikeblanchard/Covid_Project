
create table Covid_Deaths (
    iso_code varchar(10) NOT NULL, 
	continent varchar(40) NOT NULL, 
	country varchar(40) NOT NULL, 
	count_date date,
	total_cases int,
	new_cases int,
	total_deaths int,
	total_cases_per_million float,
	total_deaths_per_million float,
	population int,
	population_density float,
	median_age float,
	aged_65_older float,
	aged_70_older float,
	gdp_per_capita float,
	extreme_poverty float,
	cardiovasc_death_rate float,
	diabetes_prevalence float,
	female_smokers float,
	male_smokers float,
	handwashing_facilities float,
	hospital_beds_per_thousand float,
	life_expectancy float,
	human_development_index float,
    PRIMARY KEY (country)
);

create table Food_Supply_Quantity_kg ( 
	country varchar(40) NOT NULL, 
	alcoholic_beverages float,
	animal_fats float,
	animal_products float,
	aquatic_products float,
	cereals_excluding_beer float,
	eggs float,
	seafood float,
	fruits_excluding_wine float,
	meat float,
	milk_excluding_butter float,
	miscellaneous float,
	offals float,
	oilcrops float,
	pulses float,
	spices float,
	starchy_roots float,
	stimulants float,
	sugar_and_sweeteners float,
	sugar_crops float,
	treenuts float,
	vegetable_oils float,
	vegetables float,
	vegetal_products float,
	obesity float,
	undernourished float,
	confirmed float,
	deaths float,
	recovered float,
	active float,
	population int,
	FOREIGN KEY (country) REFERENCES Covid_Deaths (country),
	PRIMARY KEY (country)
);


create table Food_Supply_kcal ( 
	country varchar(40) NOT NULL, 
	alcoholic_beverages float,
	animal_products float,
	animal_fats float,
	aquatic_products float,
	cereals_excluding_beer float,
	eggs float,
	seafood float,
	fruits_excluding_wine float,
	meat float,
	milk_excluding_butter float,
	miscellaneous float,
	offals float,
	oilcrops float,
	pulses float,
	spices float,
	starchy_roots float,
	stimulants float,
	sugar_crops float,
	sugar_and_sweeteners float,
	treenuts float,
	vegetal_products float,
	vegetable_oils float,
	vegetables float,
	obesity float,
	undernourished float,
	confirmed float,
	deaths float,
	recovered float,
	active float,
	population INT,
	FOREIGN KEY (country) REFERENCES Covid_Deaths (country),
    PRIMARY KEY (country)
);