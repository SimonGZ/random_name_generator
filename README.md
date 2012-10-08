# Random Name Generator

This rails app is intended to function as a random name generator. It will pull in a combination of [1990][] and [2000][] US Census data using publicly available files and then generate names to the user's specifications.

Options include filtering names by:

* Male vs. Female
* Common vs. Rare
* Frequency within different racial/cultural groups (White, Black, Asian Pacific Islander, Native American, Hispanic)

[1990]:http://www.census.gov/genealogy/www/data/1990surnames/names_files.html
[2000]:http://www.census.gov/genealogy/www/data/2000surnames/index.html

## Creating the Database

Because the source data was inconsistently formatted, I converted the original census data files into clean csv files. The new files can be found in the public folder. 

These files can be imported using rake tasks (see csv_import.rake). Due to the large size of the Surname csv file (155,000 rows), the import takes a very long time.